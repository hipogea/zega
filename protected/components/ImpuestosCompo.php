<?php
class ImpuestosCompo extends CApplicationComponent
{
private $_valor;
    private $_modelo=null;

    public function __construct() {
        $this->_modelo='Valorimpuestos';

    }
  public function getImpuesto($codimpuesto,$fecha){
      if(is_null($fecha)){
          $fecha=date('Y-m-d');
      }else{
          $fecha=date('Y-m-d',strtotime($fecha));
      }

      $criterio=New DBCriteria();
      $criterio->addCondition("activo='1' and hcodimpuesto=:vcodimpuesto");
      $criterio->addCondition("ffinal >= :vfecha AND finicio <= :vfecha ");
      $criterio->params=array(":vfecha"=>$fecha,":vcodimpuesto"=>$codimpuesto);
      $modelo=$this->_modelo;
      $this->_valor=$modelo::model()->find( $criterio);
     if( is_null($this->_valor))
         throw new CHttpException(500,'No se pudo encontrar el valor del impuesto para estos valores');
   return  $this->_valor;
  }

    private function verificafechas($codimpuesto){


}

    public function insertaplantilla($iddocu,$codocu,$codimpuesto){
        /***********************************
         * Esta funcion permite registrar la plantilla de impuestos  IMPUESTOSDOCUAPLICADOS
         * para un determinado documento puede ser una OC o una FACTURA
         * X EJEMPLO para la OC NUMERO 210000567 , toca registrar
         *    codimpuesto
         *    codocu
         *    iddocu
         *    idvalorimpuesto    !... IMPORTANTE  ESTE ID SE SACA DE LA TABLA "Vavlorimpuestos"  con el valor del impuesto vigente
         *                        esto es importante para que no suceda de que cuando cambia el impuesto con el tiempo
         *                        y se quiere sacar el valor de los impuestos , se saque con el id de impuesto
         *                        actualizado, por el contrario el sistema buscará el valor verdadero del impuesto
         *                       según la fecha del documento
         ************************************/
        $modelo=new Impuestosdocuaplicado();
        $modelo->setAttributes(array(
                            'codimpuesto'=>$codimpuesto,
                            'codocu'=>$codocu,
                            'iddocu'=>$iddocu,
                            'idvalorvigente'=>$this->getImpuesto($codimpuesto),
                ));
        return $modelo->save();

    }



}
?>