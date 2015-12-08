<?php
class Seleccionavarios extends CWidget
{
	
	public $nombrecampo='';
	//public $nombrecampoareemplazar;
	//public $urlinputbox='';
	//public $urllink='';
	//public $ordencampo;
	//public $pintarcaja=1;
	public $relaciones;
	public $tamano=3;
	public $nombreclase='';
	//public $nombredelinput='';
	public $model=null;
	public $form=null;
	public $nombredialogo='';
	public $nombreframe='';	
	public $controlador='';
	public $habilitado=true;
	public $nombremodelo;
	//public $defol='';
	//public $defol2='';
	///private $caden='';
	//public $comopintar;
	//public $nombrearea=''; //nombre del Id del DIV donde se pintaran los resultados de la busqueda
	//public $campo2=null;
	public function init()
	{
		
      
	}
	
	public function run()
	{

		$existefiltro=ISSET($_SESSION['sesion_'.$this->nombremodelo]);
		  if(!$existefiltro) {
		  				$imagen="ayuda.png";
		     }else {
		     				$imagen="filter.png";
		     }

					echo "<div style='float: left; '>";
		  					 echo $this->form->textField($this->model,$this->nombrecampo,array('size'=>$this->tamano, 'disabled'=>($this->habilitado)?'':'disabled',
		       					
		       					'value'=>($existefiltro)?$_SESSION['sesion_'.$this->nombremodelo][0]:'',
                			//'ajax'=>$opcionesajax,
                 							 )); 
			 				echo " </div>";
			 				
			 			 
			 				echo " <div id='ayudaimg' style='float: left;'>";
			   				echo CHtml::link(CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"].$imagen,'x',array('id'=>'pio')),'#' ,array('onclick'=>'$("#'.$this->nombreframe.'").attr(
																					"src",
																					"'.Yii::app()->createurl('/Matchcode/recibevalores', 
																												array("campo"=> $this->nombrecampo, "clasesita"=> $this->nombremodelo, "nombremodelo"=> $this->nombremodelo ) 
																											)
																					.'"); $("#'.$this->nombredialogo.'").data("hilo","'.$this->controlador.'_'.$this->nombrecampo.'@'.$this->controlador.'_'.$this->controlador.'").dialog("open"); return false',
												)
											);	
			 				echo " </div>";

			 				echo " <div  style='float: left;'>";
			   				echo CHtml::ajaxlink(CHtml::image(($existefiltro)?Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."nofilter.png":"",'',array('id'=>'pio2')),
			   									Yii::app()->createUrl( '/Matchcode/eliminasesiones' ),
          																	 array( // ajaxOptions
               																	 'type' => 'POST',                																	
                																		'data' => array('sesion'=>$this->nombremodelo),
                																		'success'=>'$("#pio").attr("src","'.Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"].'ayuda.png")',
           																			),
           																		array( //htmlOptions
               																			// 'href' => Yii::app()->createUrl( 'user/region' ),
          																				 )
												
											);	
			 				echo " </div>";

			 			//echo $this->controlador."_".$this->nombrecampo;
				
           							

          }


   }
  ?>


