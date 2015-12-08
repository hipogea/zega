
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'objetos-grid',
	'dataProvider'=>$proveedor3,
	'itemsCssClass'=>'table table-striped table-bordered table-hover',
	//'filter'=>$modelodirecciones,
	'columns'=>array(
		//'c_hcod',to
		'codobjeto',
		//'l_vale',
		'nombreobjeto',
		
		array(
			'class'=>'CButtonColumn',
			'template'=>'{update}',
			 'buttons'=>array(
                        'update'=>
                            array(
                                    'url'=>'$this->grid->controller->createUrl("/clipro/actualizaobjeto",
																					array("id"=>$data->id,
																					        "codpro"=>$data->codpro,
																							"asDialog"=>1,
																								"gridId"=>$this->grid->id
																							)
																				)',
                                    'click'=>'function(){ 
									                     $("#cru-frame5").attr("src",$(this).attr("href")); 
									                     $("#cru-dialog5").dialog("open");  
														 return false;
														 }',
                                ),
                            ),
		),
		
	),	
	
))



; ?>

<?php

    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialog5',
    'options'=>array(
        'title'=>'Contactos',
        'autoOpen'=>false,
        'modal'=>false,
        'width'=>400,
        'height'=>400,
        'border'=>0,
    ),
    ));
?>
<iframe id="cru-frame5" width="100%" height="100%" BORDER="0"></iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>
<?php
 $createUrl = $this->createUrl('/clipro/creaobjeto',
										array(
										        //"id"=>$model->n_direc,
												"asDialog"=>1,
												"gridId"=>'objetos-grid',
												"codpro"=>$model->codpro,
											)
							);
 echo CHtml::link('Agregar objeto','#',array('onclick'=>"$('#cru-frame5').attr('src','$createUrl '); $('#cru-dialog5').dialog('open');"));
?>

