
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'materiales-grid',
	'dataProvider'=>VwSolcot::model()->search_clipro($codpro),
	'itemsCssClass'=>'table table-striped table-bordered table-hover',
	//'filter'=>$model,
	'columns'=>array(
		'id',
		'codart',
		'centro',
		'maestroclipro_maestrocompo.descripcion',
		'maestroclipro_maestrocompo.maestro_ums.desum',

		//'codpro',
		'codmon',
		'precio',
		array('name'=>'nuevas','header'=>'Nuevas','type'=>'html','value'=>'($data->ofertas_pendientes==0)?"":CHTml::openTag("span",array("class"=>"label badge-warning")).$data->ofertas_pendientes.CHTml::closeTag("span")'),
		array(
			'class'=>'CButtonColumn',
			'template'=>'{update}',
			 'buttons'=>array(
                        'update'=>
                            array(
                                    'url'=>'$this->grid->controller->createUrl("/Clipro/Actualizamateriales",
																					array("id"=>$data->id,
																					        "codpro"=>$data->codpro,
																							"asDialog"=>1,
																								"gridId"=>$this->grid->id
																							)
																				)',
                                    'click'=>'function(){ 
									                     $("#cru-frame4").attr("src",$(this).attr("href")); 
									                     $("#cru-dialog4").dialog("open");  
														 return false;
														 }',
                                ),
                            ),
		),
	),
)); ?>






<?php
//--------------------- begin new code --------------------------
   // add the (closed) dialog for the iframe
    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialog4',
    'options'=>array(
       // 'title'=>'Materiales',
        'autoOpen'=>false,
        'modal'=>false,
        'width'=>500,
        'height'=>400,
    ),
    ));
?>
<iframe id="cru-frame4" width="100%" height="100%" BORDER="0"></iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>

