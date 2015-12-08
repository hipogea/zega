<div class="division">
	Agrega conversiones, no olvides refrescar la página para ver los cambios
	</div>
	<div class="division">
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'conversiones-grid',
	'dataProvider'=>Alconversiones::model()->search_material($model->codigo),
	//'dataProvider'=>Alconversiones::model()->search(),
	//'filter'=>$model,
	'columns'=>array(
		'numerador',
		'alconversiones_um1.desum',
		//  array('name'=>'st.','header'=>'=>', 'type'=>'raw','value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."flecha.png")'),
	   		'denominador',
		'alconversiones_um2.desum',
		array(
			'class'=>'CButtonColumn',
			 'buttons'=>array(
			 
			 
                        'update'=>
                            array(
                            	   'visible'=>'true',
                                    'url'=>'$this->grid->controller->createUrl("/Maestrocompo/Modificaconversion/",
										    array("id"=>$data->id,
                                                   "asDialog"=>1,
											"gridId"=>$this->grid->id,
											)
									    )',
                                    'click'=>('function(){ 
							    $("#cru-detalle").attr("src",$(this).attr("href")); 
							    $("#cru-dialogdetalle").dialog("open");  
							     return false;
							 }'),
								'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemagrid'].'update.png', 
								'label'=>'Actualizar Item', 
                                ),
								'delete'=>
                              array(
                                   
								'visible'=>'false',
                                ),
                               'view'=>
                            array(
                            	   'visible'=>'false',

                            ),
		),
			
			),
))); ?>
	</div>

<?php 
        if ($habilitado=="") {
 				$createUrl = $this->createUrl('/maestrocompo/creaconversion',
										array(
										       "codigox"=>$model->codigo,
										       //"cest"=>$model->codestado,
											   //"id"=>$model->n_direc,
												"asDialog"=>1,
												"gridId"=>'detalle-conversion',
												//"idcabecera"=>Numeromaximo::numero_aleatorio(20,100000),
												
											)
							);
					 $UrlDefault = $this->createUrl('/ocompra/defaulte');
						echo CHtml::button("   +   ",array('title'=>"Agregar ",'onclick'=>" $('#cru-detalle').attr('src','$createUrl ');$('#cru-dialogdetalle').dialog('open');")); 


					
        }

?>

