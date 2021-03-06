

   <div class="division">
        <div class="wide form">
            <div class="barrasup barrasup-simple">

                <?php echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'compra.png',"hola",array('width'=>'15','height'=>'8')); ?>
                <span class="badge badge-notice">Orden de compra
                </span>
            </div>

                <?php $form=$this->beginWidget('CActiveForm', array(
	                                            'id'=>'Ocompra-form',
	                                            'enableClientValidation'=>FALSE,
                                                'clientOptions' => array(
                                                'validateOnSubmit'=>TRUE,
                                                'validateOnChange'=>TRUE  ,
                                                                     ),
	                                            'enableAjaxValidation'=>TRUE,
		                                                    )); ?>

            <div class="row">
                <?php
                $botones=array(
                    'go'=>array(
                        'type'=>'A',
                        'ruta'=>array(),
                        'visiblex'=>array(null,ESTADO_PREVIO),
                    ),
                    'save'=>array(
                        'type'=>'A',
                        'ruta'=>array(),
                        'visiblex'=>array(ESTADO_CREADO,ESTADO_AUTORIZADO,ESTADO_MODIFICADO,
                                          ESTADO_CONFIRMADO,ESTADO_FACTURADO_PARCIAL,ESTADO_ACEPTADO,
                                        ESTADO_CON_ENTREGAS,ESTADO_FACTURADO_TOTAL),
                    ),


                    'ok'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/procesardocumento',array('id'=>$model->idguia,'ev'=>65)),//aprobar
                        'visiblex'=>array(ESTADO_CREADO),
                    ),

                    'undo'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/procesardocumento',array('id'=>$model->idguia,'ev'=>67)), //revertir aprobacion
                        'visiblex'=>array(ESTADO_ACEPTADO),

                    ),

                    'tacho'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/procesardocumento',array('id'=>$model->idguia,'ev'=>66)),
                        'visiblex'=>array(ESTADO_CREADO),

                    ),
                    'pdf'=>array(
                        'type'=>'D', //AJAX LINK
                        'ruta'=>array('coordocs/hacereporte',array('id'=>$model->idreporte,'idfiltrodocu'=>$model->idguia,'file'=>1)),
                        'opajax'=>array(
                                        'type'=>'POST',
                            'ruta'=>array('coordocs/hacereporte',array('id'=>$model->idreporte,'idfiltrodocu'=>$model->idguia,'file'=>1)),
                            'beforeSend' => 'js:function(){
                                  				 var r = confirm("Esta Accion creara un archivo PDF, desea continuar ?");
                          						 if(!r){return false;}else{ $("#myDivision").addClass("procesandoajax");}
                               							 }',

                            /*'beforeSend' => 'function(){
                                        $("#myDivision").addClass("procesandoajax");}',*/
                            'complete' => 'function(){
                                         $("#myDivision").removeClass("procesandoajax");
                                         $("#myDivision").html("Se genero el PDF CON EXITO").fadeIn().animate({opacity: 1.0}, 3000).fadeOut("slow");
                                        $("#myDivision").append(".");
                                         }'
                                       ),
                        /*'success'=>'function(data) {
                                         $("#myDivision").html(data).fadeIn().animate({opacity: 1.0}, 3000).fadeOut("slow");
                                        }'
                                        ),*/
                        'visiblex'=>array(ESTADO_ACEPTADO),

                    ),
                    'mail'=>array(
                        'type'=>'D', //AJAX LINK
                        'ruta'=>array($this->id.'/enviarpdf',array('id'=>$model->idguia)),
                        'opajax'=>array(
                            'type'=>'POST',
                            'ruta'=>array($this->id.'/mail',array('id'=>$model->idguia)),
                            'beforeSend' => 'js:function(){
                                  				 var r = confirm("Esta Accion un mail, desea continuar ?");
                          						 if(!r){return false;}else{ $("#myDivision").addClass("procesandoajax");}
                               							 }',

                            /*'beforeSend' => 'function(){
                                        $("#myDivision").addClass("procesandoajax");}',*/
                            'complete' => 'function(){
                                         $("#myDivision").removeClass("procesandoajax");
                                         $("#myDivision").html("Se Envio el correo ").fadeIn().animate({opacity: 1.0}, 3000).fadeOut("slow");
                                        $("#myDivision").append(".");
                                         }'
                        ),

                        'visiblex'=>array(ESTADO_ACEPTADO),

                    ),


                    'camera'=>array(
                        'type'=>'D', //AJAX LINK
                      'ruta'=>array('coordocs/hacereporte',array('id'=>$model->idreporte,'idfiltrodocu'=>$model->idguia,'file'=>0)),

                        'opajax'=>array(
                            'type'=>'POST',
                            'ruta'=>array('coordocs/hacereporte',array('id'=>$model->idreporte,'idfiltrodocu'=>$model->idguia,'file'=>0)),
                              'update' => '#zona_pdf',
                        ),

                        'visiblex'=>array(ESTADO_ACEPTADO,ESTADO_PREVIO,ESTADO_CREADO),

                    ),

                    'config'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/procesardocumento',array('id'=>$model->idguia,'ev'=>64)),
                        'visiblex'=>array(ESTADO_CREADO,ESTADO_MODIFICADO,
                            ESTADO_CONFIRMADO,ESTADO_FACTURADO_PARCIAL,ESTADO_ACEPTADO,
                            ESTADO_CON_ENTREGAS,ESTADO_FACTURADO_TOTAL),

                    ),
                    'print'=>array(
                        'type'=>'B',
                        'ruta'=>array('coordocs/hacereporte',array('id'=>$model->idreporte,'idfiltrodocu'=>$model->idguia,'file'=>0)),
                        'visiblex'=>array(ESTADO_ACEPTADO,ESTADO_CONFIRMADO,ESTADO_FACTURADO_PARCIAL,ESTADO_ACEPTADO,
                            ESTADO_CON_ENTREGAS,ESTADO_FACTURADO_TOTAL),
                    ),

                    'money'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/agregaimpuesto',array(
                            'idguia'=>$model->idguia,
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),

                    ),



                    'out'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/salir',array('id'=>$model->idguia)),
                        'visiblex'=>array(ESTADO_CREADO,ESTADO_ACEPTADO,ESTADO_MODIFICADO,
                            ESTADO_CONFIRMADO,ESTADO_FACTURADO_PARCIAL,ESTADO_ACEPTADO,
                            ESTADO_CON_ENTREGAS,ESTADO_FACTURADO_TOTAL),
                    ),
                );

 /*VAR_DUMP($model->{$this->campoestado});
                YII::APP()->END();*/
                $this->widget('ext.toolbar.Barra',
                    array(
                        //'botones'=>MiFactoria::opcionestoolbar($model->id,$this->documento,$model->codestado),
                        'botones'=>$botones,
                        'size'=>24,
                        'extension'=>'png',
                        'status'=>$model->{$this->campoestado},

                    )
                );?>
            <div id="myDivision">
.
            </div>

            </div>





   
                <?php
                    $this->widget('zii.widgets.jui.CJuiTabs', array(
                     'theme' => 'default',
					'tabs' => array(
									'Inicio'=>array('id'=>'tab_',
														'content'=>$this->renderPartial('tab_uno', array('form'=>$form,'model'=>$model),TRUE)
																			), 
									'Comerciales'=>array('id'=>'tab__',
														'content'=>$this->renderPartial('tab_dos', array('form'=>$form,'model'=>$model),TRUE)
																			),
									'Adicionales'=>array('id'=>'tab___',
														'content'=>$this->renderPartial('tab_tres', array('form'=>$form,'model'=>$model),TRUE)
																			),
									'Mensajes'=>array('id'=>'tab____',
														'content'=>$this->renderPartial('tab_cuatro', array('form'=>$form,'model'=>$model),TRUE)
																			),

                                    'Historial'=>array('id'=>'tab_____',
                            'content'=>$this->renderPartial('tab_cinco', array('form'=>$form,'model'=>$model),TRUE)
                        ),

                        'Impuestos'=>array('id'=>'tab______',
                            'content'=>$this->renderPartial('tab_impuestos', array('form'=>$form,'model'=>$model),TRUE)
                        ),


									),
					'options' => array('overflow'=>'auto','collapsible' => false,),
                    'id'=>'MyTabi',)
			                );
                            ?>
            <?php // $this->endWidget(); ?>

            <?php // yii::app()->end();?>
            <?php/* $form=$this->beginWidget('CActiveForm', array(
                'id'=>'Ocompradetalle-form',
                'enableClientValidation'=>true,

                'enableAjaxValidation'=>false,
            )); */?>
         <?php
            if ( !$model->isNewRecord )  {
				$this->renderpartial('vw_detalle',array('model'=>$model,'eseditable'=>$this->eseditable($model->codestado),'filtro'=>$model->idguia));
				}
            ?>
	<?php
	   $this->renderpartial('vw_resumen',array('id'=>($model->isNewRecord)?0:$model->idguia,'monedas'=>'$','descuento'=>($model->isNewRecord)?0:$model->descuento));
	 ?>

            <div class="row">

                <?php
                $botones=array(
                    'add'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/creadetalle',array(
                            'idcabeza'=>$model->idguia,
                            'cest'=>$model->{$this->campoestado},
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),

                    ),

                    'tool'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/creadetalleserv',array(
                            'idcabeza'=>$model->idguia,
                            'cest'=>$model->{$this->campoestado},
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),

                    ),

                    'minus'=>array(
                        'type'=>'D',
                        'ruta'=>array($this->id.'/borraitems',array()),

                        'opajax'=>array(
                            'type'=>'POST',
                            'url'=>Yii::app()->createUrl($this->id.'/borraitems',array()),
                            'success'=>"function(data) {
										$('#AjFlash').html(data).fadeIn().animate({opacity: 1.0}, 3000).fadeOut('slow');

                                              $.fn.yiiGridView.update('detalle-grid'); return false;
                                        }",
                            'beforeSend' => 'js:function(){
                                  				 var r = confirm("Esta seguro de Eliminar estos Items?");
                          						 if(!r){return false;}
                               							 }
                               					',

                        ),
                        'visiblex'=>array(ESTADO_CREADO,ESTADO_AUTORIZADO,ESTADO_ANULADO,ESTADO_CONFIRMADO,ESTADO_FACTURADO),

                    ),


                    'checklist'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/agregardespacho',array(
                            'id'=>$model->idguia,
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),
                    ),
                    'pack2'=>array(
                        'type'=>'B',
                        'ruta'=>array($this->id.'/procesardocumento',array('id'=>$model->idguia,'ev'=>35)),
                        'visiblex'=>array(ESTADO_CREADO),

                    ),



                    'briefcase'=>array(
                        'type'=>'D',
                        'ruta'=>array($this->id.'/Agregardelmaletin',array()),
                        'opajax'=>array(
                            'type'=>'GET',
                            'data'=>array('id'=>$model->idguia),
                            'url'=>Yii::app()->createUrl($this->id.'/Agregardelmaletin',array()),
                            'success'=>'js:function(data) {
                            $("#AjFlash").html(data).fadeIn().animate({opacity: 1.0}, 3000).fadeOut("slow");
                            $.fn.yiiGridView.update("detalle-grid"); alert(data);}',
                            'beforeSend' => 'js:
                               					 function(){
                                  				 var r = confirm("¿Esta seguro de agregar los items del maletin ?");
                          						 if(!r){return false;}
                               							 }
                               					',
                        ),
                        'visiblex'=>array(ESTADO_CREADO,ESTADO_AUTORIZADO,ESTADO_ANULADO,ESTADO_CONFIRMADO,ESTADO_FACTURADO),

                    ),



                    'join'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/agregaritemsolpe',array(
                            'idguia'=>$model->idguia,
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),

                    ),

                    'pack'=>array(
                        'type'=>'C',
                        'ruta'=>array($this->id.'/agregarmasivamente',array(
                            'idguia'=>$model->idguia,
                            //"id"=>$model->n_direc,
                            "asDialog"=>1,
                            "gridId"=>'detalle-grid',
                        )
                        ),
                        'dialog'=>'cru-dialogdetalle',
                        'frame'=>'cru-detalle',
                        'visiblex'=>array(ESTADO_CREADO),

                    ),


                );


                $this->widget('ext.toolbar.Barra',
                    array(
                        //'botones'=>MiFactoria::opcionestoolbar($model->id,$this->documento,$model->codestado),
                        'botones'=>$botones,
                        'size'=>24,
                        'extension'=>'png',
                        'status'=>$model->{$this->campoestado},


                    )
                );?>
            </div>





                    <?php $this->endWidget(); ?>

        </div> <!--div class wide form !-->
   </div> <!--div class division !-->

<?php
//--------------------- begin new code --------------------------
// add the (closed) dialog for the iframe
$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialogdetalle',
    'options'=>array(
        'title'=>'Crear item',
        'autoOpen'=>false,
        'modal'=>true,
        'width'=>600,
        'height'=>500,
        'show'=>'Transform',
    ),
));
?>
<iframe id="cru-detalle" frameborder="0"  width="100%" height="100%" ></iframe>
<?php

$this->endWidget();
//--------------------- end new code --------------------------
?>




<script>
function reloadGrid(data) {

    $.fn.yiiGridView.update('detalle-grid');
}
</script>














<?php
//--------------------- begin new code --------------------------
   // add the (closed) dialog for the iframe
    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialog3',
    'options'=>array(
        'title'=>'Explorador',
        'autoOpen'=>false,
        'modal'=>true,
        'width'=>850,
        'height'=>500,
    ),
    ));
?>
<iframe id="cru-frame3" width="100%" height="100%"></iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>

