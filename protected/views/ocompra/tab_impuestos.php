
<div style="width:400px;">
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'impuestos-grid',
	//'dataProvider'=>Alentregas::model()->search_por_detcompra($filtro),
		'cssFile' => Yii::app()->getTheme()->baseUrl.'/css/grilla_naranja.css',

		'dataProvider'=>Impuestosdocuaplicado::model()->search_por_id($model->idguia),
	//'filter'=>$model,
	'columns'=>array(
		'impuesto.descripcion',
		ARRAY('name'=>'valorimpuesto','value'=>'$data->valorimpuesto*100'),

		array(
			'class'=>'CButtonColumn',
			'template'=>'{delete}',
			'buttons'=>array(


				'delete'=>
					array(

						'url'=>'$this->grid->controller->createUrl("/Ocompra/borrarimpuesto", array("id"=>$data->id))',
						'options' => array( 'ajax' => array('type' => 'GET', 'success' => "js:function() { $.fn.yiiGridView.update('impuestos-grid'); }" ,'url'=>'js:$(this).attr("href")')) ,
						'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'borrador.png',
						'label'=>'Borrar Impuesto',
					),


			),
		),




			 
				),
						)

						); 
		?>
</div>