<?php
class ImpuestosCompo extends CApplicationComponent
{
private $_valor;
    private $_modelo=null;

    public function __construct() {
        $this->_modelo='Valorimpuestos';

    }
  public function getImpuesto($codimpuesto,$fecha=null){
      if(is_null($fecha)){
          $fecha=date('Y-m-d');
      }else{
          $fecha=date('Y-m-d',strtotime($fecha));
      }

      $criterio=New CDBCriteria();
      $criterio->addCondition("activo='1' and hcodimpuesto=:vcodimpuesto");
      $criterio->addCondition("ffinal >= :vfecha AND finicio <= :vfecha ");
      $criterio->params=array(":vfecha"=>$fecha,":vcodimpuesto"=>$codimpuesto);
      $modelo=$this->_modelo;
      $this->_valor=$modelo::model()->find( $criterio)->valor;
     if( is_null($this->_valor))
         throw new CHttpException(500,'No se pudo encontrar el valor del impuesto para esta fecha');
   return  $this->_valor;
  }

    private function verificafechas($codimpuesto){


}

    public function borraplantilla($iddocu,$codocu,$codimpuesto){
        /***********************************
         * Esta funcion borra la plantilla de impuestos  IMPUESTOSDOCUAPLICADOS
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
        $registro=Impuestosaplicados::model()->find($this->criter($iddocu,$codocu,$codimpuesto));
        if(!is_null($registro)){
            return $registro->delete();}else{
                return false;
            }

        }




    private function criter($iddocu,$codocu,$codimpuesto){
        $criterio=New CDBCriteria();
        $criterio->addCondition('codimpuesto=:vcodimpuesto AND codocu=:vcodocu AND iddocu =:viddocu ');
        $criterio->params=array(
            ':vcodimpuesto'=>$codimpuesto,
            ':vcodocu'=>$codocu,
            ':viddocu'=>$iddocu,
        );
        return $criterio;
    }

    private function  criterdoc ($iddocu,$codocu){
        $criterio=New CDBCriteria();
        $criterio->addCondition(' codocu=:vcodocu AND iddocu =:viddocu ');
        $criterio->params=array(
            ':vcodocu'=>$codocu,
            ':viddocu'=>$iddocu,
        );
        return $criterio;
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


        $registro=Impuestosaplicados::model()->find($this->criter($iddocu,$codocu,$codimpuesto));
        if(is_null($registro)){
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

    private function criterdoci ($iddetalle,$iddocu,$codocu,$codimpuesto){
        $criterio=New CDBCriteria();
        $criterio->addCondition('codimpuesto=:vcodimpuesto AND hidocu=:viddetalle AND  codocu=:vcodocu AND hidocupadre =:viddocu ');
        $criterio->params=array(
            ':vcodocu'=>$codocu,
            ':viddocu'=>$iddocu,
            ':viddetalle'=>$iddetalle,
            ':vcodimpuesto'=>$codimpuesto,

        );
        return $criterio;
    }


public function colocaimpuestos($iddetalle,$iddocu,$codocu,$codmon,$monto){
    /************************************
     * Esta funcion coloca los impuestos a un registro hijo de
     * un documento
     * iddetalle: el ID del registro hijo
     * iddocu  : El id del documento
     * codocu: El codocu del documento
     *
     **************************************/
  $varios=Impuestosdocuaplicado::model()->findAll($this->criterdoc($iddocu,$codocu));
   // print_r($varios);yii::app()->end();
    foreach($varios as $fila){
      $filaimpuesto=Impuestosaplicados::model()->find($this->criterdoci($iddetalle,$iddocu,$codocu,$fila->codimpuesto));
        if(is_null($filaimpuesto)){
            $filaimpuesto=New Impuestosaplicados();
            //echo "salio nuevo ".$filaimpuesto->id."  <br>";
        }
        $filaimpuesto->setAttributes(array(
            'codimpuesto'=>$fila->codimpuesto,
            'codocu'=>$codocu,
            'hidocupadre'=>$iddocu,
            'hidocu'=>$iddetalle,
            'codmon'=>$codmon,
            'valor'=>$this->getImpuesto($fila->codimpuesto)*$monto,
        ));
       //echo " impuesto :". $fila->codimpuesto." <br>";
       // print_r($filaimpuesto->attributes);
       // echo " cambio  <br><br><br>";
        $filaimpuesto->save();
          //  print_r($filaimpuesto->geterrors());yii::app()->end();

    }
  //  ;yii::app()->end();

}



}
?>