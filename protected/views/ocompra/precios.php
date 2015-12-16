
<div style=" width:300px;  " >
<?php if($codprov=='')$codprov=null;?>
<?php

$this->widget('zii.widgets.grid.CGridView', array(
		'summaryText'=>'',
	'id'=>'precios-grid',
	//'dataProvider'=>Alentregas::model()->search_por_detcompra($filtro),
		//'cssFile' => Yii::app()->getTheme()->baseUrl.'/css/grilla_naranja.css',

		'dataProvider'=>Ocompra::historicoprecios($codigom,$codprov),
	//'filter'=>$model,
	'columns'=>array(
		array(
			'name'=>'fecdoc',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'Fec',
			'value'=>'date("d.m.y", strtotime($data["fecdoc"]))',
			'htmlOptions'=>array('width'=>40),
		),
		array(
			'name'=>'numcot',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'O.c.',
			'value'=>'$data["numcot"]',
			'htmlOptions'=>array('width'=>40),
		),

		array(
			'name'=>'punit',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'P Unit',
			'value'=>'Mifactoria::decimal($data["punit"],2)',
			'htmlOptions'=>array('width'=>40),
		),
		array(
			'name'=>'moneda',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'Moneda',
			'value'=>'$data["moneda"]',
			'htmlOptions'=>array('width'=>15),
		),
		array(
			'name'=>'umbase',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'Um',
			'value'=>'$data["desumbase"]',
			'htmlOptions'=>array('width'=>20),
		),



		),
						)

						); 
		?>
</div>