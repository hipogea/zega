

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'alinventario-form',
	'enableAjaxValidation'=>false,
)); ?>


<?PHP
$this->widget('zii.widgets.jui.CJuiTabs', array(
					'tabs' => array(

									'General'=>array('id'=>'tab_item',
														'content'=>$this->renderPartial('_form', array(
															'model'=>$model,'form'=>$form),TRUE)),
										'Historial'=>array('id'=>'tab_reservas',
											'content'=>$this->renderpartial('vistakardex',array('model'=>$model,   ), true),
                                           ),
						       'Otros centros'=>array('id'=>'tab_modelo',
							        'content'=>$this->renderpartial('stocks',array('model'=>$model,   ), true),


								   ),
						/*'Stock reservado'=>array('id'=>'tab_reservado',
							'content'=>$this->renderpartial('detalle_stock_reservado',array('model'=>$model,   ), true),
						),*/

						'pronostico'=>array('id'=>'tab_pronostico',
							'content'=>$this->renderpartial('vw_pronostico',array('model'=>$model,'form'=>$form   ), true),
						),

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

<?php $this->endWidget(); ?>