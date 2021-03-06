<?php
/*
* gauge extention
* author : pegel.linuxs@gmail.com
*/
class Barra extends CWidget
{
	
	/*
	* @var options for gauge options
	*/
	
	public $botones=array(); ///clave de boton y como valor un array que contiene el enlace (otro artray)  y un flag para determonar
	//si el boton es SUBMIT  array['save'=> 'S' ]
	// O ENLACE  			array['print'=>array( '/recurso/', array('id'=>23))  ]   SE DEBE DE ESPECIFICAR LE ENELACE CON UN ARRAY
	public $size; ///pixeles para el tamaño de los botones
	public $ruta;
	public $extension;
	public $status;

		
	public function init()
	{


		$asset=Yii::app()->assetManager->publish(dirname(__FILE__).'/assets');
		$this->ruta=$asset;
    	$cs=Yii::app()->clientScript;

    	$cs->registerCssFile($asset."/css/barra.css",CClientScript::POS_HEAD);
		//$cs->registerScriptFile($asset."/js/jQueryRotate.min.js");
		$cs->registerScriptFile($asset."/js/barra.js",CClientScript::POS_HEAD);
		
		$script = 'assetUrl = "' . $asset . '";';

	}
	private function iniciamarco(){
		echo "<DIV CLASS='marco' >";
	}
	private function cierradiv(){
		echo "</div>";
	}

	private function iniciaboton(){
		echo "<DIV CLASS='boton boton".$this->size."' >";
	}



	public function run()
	{



	    foreach($this->botones as $clave=>$arreglo) {
            //solo si sin son arrays no  vacios
			if(count($this->botones[$clave])>0){

			if ( in_array( $this->status,$arreglo[ "visiblex" ]) ) {

				$this->iniciamarco ();
				$this->iniciaboton ();
				// $rutaimagenes=Yii::app()->getHomeUrl().'protected/extensions/toolbar/assets/img/'.$clave.$this->size.'.'.strtolower($this->extension);

				//$rutaimagenes=substr(dirname(__FILE__).'/assets',strpos(dirname(__FILE__).'/assets',Yii::app()->getHomeUrl())).'/img/'.$clave.$this->size.'.'.strtolower($this->extension);
				// $rutaimagenes=Yii::app()->baseUrl.'/assets/img/'.$clave.'.'.strtolower($this->extension);
				$rutaimagenes = $this->ruta . '/img/' . $this->size . '/' . $clave . '.' . strtolower ( $this->extension );
				$rutaimagenes_bajo = $this->ruta . '/img/' . $this->size . '/' . $clave . '_.' . strtolower ( $this->extension );
				$rutaapunta = "";
				if ( count ( $arreglo[ "ruta" ] ) > 0 ) { //si se han especificado elemtnos en el parametro ruta
					$rutaapunta = yii::app ()->createUrl ( $arreglo[ "ruta" ][ 0 ] , $arreglo[ "ruta" ][ 1 ] );
				} else {

				}
				$arrayestilolink = array (
					'id' => $clave ,
					'class' => 'img_swap imagen' ,
					'onMouseOver' => "this.src='" . $rutaimagenes_bajo . "'" ,
					'onMouseOut' => "this.src='" . $rutaimagenes . "'" ,
					//'class'=>'imagen',
					'width' => $this->size - 1 ,
					'height' => $this->size - 1
				);
				$arrayestiloboton = array (
					'value' => '' ,
					'class' => 'boton_barrita' ,
					'onMouseOver' => "this.src='" . $rutaimagenes_bajo . "'" ,
					'onMouseOut' => "this.src='" . $rutaimagenes . "'" ,
						//'class'=>'imagen',
					'width' => $this->size - 1 ,
					'height' => $this->size - 1
				);

				switch ( $arreglo[ 'type' ] ) {
					//creamos el link de la ruta

					case "A": //Se trata de un boton simple POST
						echo CHtml::imageButton ( $rutaimagenes , $arrayestiloboton
						);
						break;
					case "B":
						echo CHtml::link ( Chtml::image ( $rutaimagenes , '' , $arrayestilolink
						) ,
							$rutaapunta
						);
						break;
					case "C":
						echo CHtml::link ( Chtml::image ( $rutaimagenes , '' , $arrayestilolink
						) , '#' ,
							array ( 'onclick' => " $('#" . $arreglo[ "frame" ] . "').attr('src','" . $rutaapunta . "');$('#" . $arreglo[ "dialog" ] . "').dialog('open');" )

						);
						break;

					case "D":
						echo CHtml::AjaxLink ( Chtml::image ( $rutaimagenes , '' , $arrayestilolink
						) , $rutaapunta ,
							$arreglo[ "opajax" ]
						);
						break;
				}

				/*

                       if (is_array($arreglo)){ //SI ES UN ENLACE
                           echo CHtml::link(Chtml::image($rutaimagenes,'',array(
                                   'id'=>$clave,
                                   'class'=>'img_swap imagen',
                                'onMouseOver'=>"this.src='". $rutaimagenes_bajo."'",
                               'onMouseOut'=>"this.src='". $rutaimagenes."'",
                               //'class'=>'imagen',
                               'width'=>$this->size-1,
                               'height'=>$this->size-1
                                                                               )
                                                   ),$arreglo
                                           );
                               } ELSE {  /// ES UN SUBMIT
                           echo CHtml::imageButton($rutaimagenes,array('class'=>'boton',
                               'width'=>$this->size-1, 'height'=>$this->size-1,
                               //'onClick'=>'Loading.show();Loading.hide(); ',
                               'onMouseOver'=>"this.src='". $rutaimagenes_bajo."'",
                               'onMouseOut'=>"this.src='". $rutaimagenes."'",
                               'value'=>'Crear'));
                       }
                            */
				$this->cierradiv ();
				$this->cierradiv ();
			  }
			}
		}

	}


}
