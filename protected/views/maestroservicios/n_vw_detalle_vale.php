<?php
?>
<div id="AjFlash" class="flash-regular"></div>
 <?php
       $this->renderPartial('n_vw_detalle_grilla', array('model'=>$model, 'campoestado'=>$campoestado,"idcabecera"=>$model->id,'eseditable'=>$eseditable));
		?>


<div class="row">
	<?php
	if($model->almacendocs_almacenmovimientos->itemsdeterministicos=='1')
			{ $arraybotonagrega=array(
					'type'=>'C',
					'ruta'=>array($this->id.'/creadetalle',array(
						'idcabeza'=>$model->id,
						'cest'=>$model->cestadovale,
						'asDialog'=>1,
						"gridId"=>'detalle-grid',
									)
											),
						'dialog'=>'cru-dialogdetalle',
					'frame'=>'cru-detalle',
					'visiblex'=>array(ESTADO_PREVIO,NUll,ESTADO_CREADO),

					);

			}else {
		$arraybotonagrega=array();
				}

	if($model->almacendocs_almacenmovimientos->borraritems=='1')
	{ $arraybotonmenos=array(
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
		'visiblex'=>array(ESTADO_PREVIO,NUll,ESTADO_CREADO),

	);

	}else {
		$arraybotonmenos=array();
	}



	$botones=array(
		'add'=>$arraybotonagrega,
		'minus'=>$arraybotonmenos,
		         );

	$this->widget('ext.toolbar.Barra',
		array(
			//'botones'=>MiFactoria::opcionestoolbar($model->id,$this->documento,$model->codestado),
			'botones'=>$botones,
			'size'=>24,
			'extension'=>'png',
			'status'=>$model->cestadovale,
		)
	);?>

</div>













<?php
if ($this->eseditable($model->cestadovale)=='')
{


	switch ($model->codmovimiento) {
		case '77':
			$ruta='/almacendocs/creadetalletraspaso';
			break;
		case '70':
			$ruta='/almacendocs/creadetallereingreso';
			break;
		case '98':
			$ruta='/almacendocs/creadetalle';
			break;
		default:
			$ruta='/almacendocs/creadetalle';

	}
		$createUrl = $this->createUrl($ruta,
			array(
				"idcabeza"=>$model->id,
				"cest"=>$model->cestadovale,
				//"id"=>$model->n_direc,
				"asDialog"=>1,
				"gridId"=>'detalle-grid',
				//"idcabecera"=>Numeromaximo::numero_aleatorio(20,100000),
			)
		);




	echo CHtml::button("      +      ",array('title'=>"Agregar Item",'onclick'=>" $('#cru-detalle').attr('src','$createUrl ');$('#cru-dialogdetalle').dialog('open');",'class'=>'botoncito'));
//ECHO CHtml::ajaxSubmitButton('      -     ',array('guia/borraitems',array('class'=>'botoncito')),array('success'=>'reloadGrid'));
//echo CHtml::button("      -      ",array('title'=>" Borrar Items seleccionados",'onclick'=>" $('#cru-detalle').attr('src','$createUrl ');$('#cru-dialogdetalle').dialog('open');"));
//echo CHtml::button("     [ : ]     ",array('title'=>" Editar Item(s)     ",'onclick'=>" $('#cru-detalle').attr('src','$createUrl ');$('#cru-dialogdetalle').dialog('open');"));
//echo CHtml::button("     [D]     ",array('title'=>" Editar Item(s)     ",'onclick'=>" $('#cru-detalle').attr('src',' $UrlDefault ');$('#cru-dialogdetalle').dialog('open');"));

	ECHO CHtml::ajaxSubmitButton('      -     ',array(
		'/almacendocs/borraitem'
	),
		array('success'=>'reloadGrid',

		),
		array(
			'confirm'=>'Esta seguro de borrar los items seleccionados ?',
		)
	/*array(
         'beforeSend'=>'function() {
                                     $("#resPass").html("please wait......");

                                    }',
          ),
    array(
            'complete' => 'function() {
                                      $("#resPass").hide();
                                                 }',
        )
        */

	);

}


?>










	
<?php
//--------------------- begin new code --------------------------
   // add the (closed) dialog for the iframe
    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialogdetalle',
    'options'=>array(
        'title'=>'Crear item',
        'autoOpen'=>false,
        'modal'=>true,
        'width'=>500,
        'height'=>500,
		'show'=>'Transform',
    ),
    ));
?>
<iframe id="cru-detalle" frameborder="0"  width="100%" height="100%" >
	hola
</iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>





<script>
function reloadGrid(data) {
    $.fn.yiiGridView.update('detalle-grid');
	alert('Se anularon los items '+data+ ' ');
}
</script>