<?php
$this->widget('ext.groupgridview.GroupGridView', array(
	'id'=>'detalle-grid',
	'dataProvider'=>VwDetalleingresofactura::model()->search_cabecera($model->id),
	'mergeColumns' => array('itemcompra','desum'),
	'mergeType'=>'nested',
	'extraRowColumns' => array('itemcompra'),
	'extraRowTotals' => function($data, $row, &$totals) {
		if(!isset($totals['sum_punitcompra'])) $totals['sum_punitcompra'] = 0;
		$totals['sum_punitcompra']+=$data['punitcompra']*$data['cant'];

	},
	'extraRowExpression' => '"<span style=\"font-weight: bold;\"> Total Item : ".$totals["sum_punitcompra"]." </span>"',
	'extraRowPos'=>'below',
	//'filter'=>$model,
	//'cssFile' => ''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemagrid'].'grid_mediano.css',  // your version of css file
	//'cssFile'=>Yii::app()->getTheme()->baseUrl.'/css/style-grid.css',  // your version of css file
	//'summaryText'=>'',
	'itemsCssClass'=>'table table-striped table-bordered table-hover',

	'columns'=>array(


		array(
			'class'=>'CCheckBoxColumn',
			'selectableRows' => 20,
			'value'=>'$data->idtemp',
			'checkBoxHtmlOptions' => array(
				'name' => 'cajita[]',
				),
			),
		array('name'=>'ptotal','value'=>'MiFactoria::decimal($data->punitcompra*$data->cant)'),
		//'idtemp',
		'itemcompra',
		'cant',
		'desum',
		'descri',
		array('name'=>'punitcompra','value'=>'MiFactoria::decimal($data->punitcompra)'),



		array(
			'class'=>'CButtonColumn',
			'buttons'=>array(


				'update'=>
					array(
						'visible'=>'true',
						'url'=>'$this->grid->controller->createUrl("/almacendocs/Modificadetalle/",
										    array("id"=>$data->idtemp,
                                                                                         "asDialog"=>1,
											"gridId"=>$this->grid->id,
											"ed"=>"si",

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
						'visible'=>'true',
						'url'=>'$this->grid->controller->createUrl("/almacendocs/borraitem", array("id"=>$data->idtemp))',
						'options' => array( 'ajax' => array('type' => 'GET',  'success' => "js:function() { $.fn.yiiGridView.update('detalle-grid'); }" ,'url'=>'js:$(this).attr("href")'),
							'onClick'=>'Loading.show();Loading.hide(); ',
						) ,
						'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'hand_point.png',
						'label'=>'Ver detalle',
					),
				'view'=>
					array(
						'visible'=>'true',
						'url'=>'$this->grid->controller->createUrl("/Almacendocs/Borraitem/",
										    array("id"=>$data->id,
                                                                                         "asDialog"=>1,
											"gridId"=>$this->grid->id,
											"ed"=>"no",

											)
									    )',
						'click'=>('function(){
							    $("#cru-detalle").attr("src",$(this).attr("href"));
							    $("#cru-dialogdetalle").dialog("open");
							     return false;
							 }'),
						'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemagrid'].'borrador.png',
						'label'=>'Borrar...',
					),

			),
		),

	),
)); ?>
