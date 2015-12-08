
<?PHP
$this->widget('zii.widgets.jui.CJuiTabs', array(
					'tabs' => array(
									//'StaticTab 1' => 'Content for tab 1',
									//'StaticTab 2' => array('content' => 'Content for tab 2', 'id' => 'tab2'),
        // panel 3 contains the content rendered by a partial view
									//'AjaxTab' => array('ajax' => $this->createUrl('..')),
									'Item'=>array('id'=>'tab_item',
														'content'=>$this->renderPartial('_form_detalle', array(
															'model'=>$model, 'idcabeza'=>$model->hidsolpe,
														),TRUE)),
										'Reservas Activas'=>array('id'=>'tab_reservas',
											'content'=>$this->renderpartial("vistareservas",array('modelodetalle'=>$model, "codigo"=>$model->codart, "centro"=>$model->centro,"codal"=>$model->codal,   ), true),

																			),
										'Stock'=>array('id'=>'tab_stock',
		'content'=>$this->renderpartial("vistastock",array('modelodetalle'=>$model, "codigo"=>$model->codart, ), true),

												) ,

									'Material'=>array('id'=>'tab_material',
											'content'=>$this->renderpartial("vistamaterial",array('modelodetalle'=>$model, "codigo"=>$model->codart,"centro"=>$model->centro,"codal"=>$model->codal, ), true),

													) ,

						'Historial Atenciones'=>array('id'=>'tab_atenciones',
							'content'=>$this->renderpartial("tab_atenciones",array('modelodetalle'=>$model ), true),

						) ,

										'Auditoria'=>array('id'=>'tab_auditoria',
											'content'=>$this->renderpartial("auditoria",array('modeloapintar'=>'Desolpe','model'=>$model ), true),

													) ,
                                           ),




		'options' => array(	'collapsible' => false,
			'heightStyle'=>'auto',
		),
    // set id for this widgets
					'id'=>'MyTab',
												)
			)

;


		 
		 
		 
?>

