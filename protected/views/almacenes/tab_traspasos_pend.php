
<?php

$provex=VwTraspasospendientes::model()->search_por_almacen($model->codalm);

//$prove=VwStockSupervision::model()->search_por_almacen($model->codalm,$model->codcen);
?>




<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'traspasos-grid',
	'dataProvider'=>$provex,
	//'filter'=>$model,
	'itemsCssClass'=>'table table-striped table-bordered table-hover',
	'columns'=>array(
		//'codart',
		array('name'=>'numvale','type'=>'raw','value'=>'CHTml::link($data->numvale,Yii::app()->createUrl("almacendocs/editar",array("id"=>$data->hidvale)))'),
		'codaldestino',
		'desum',
		'fechacont',
		'codart',
		'descripcion',
		'cantpendiente'
		//array('name'=>'cantpendiente','type'=>'raw','value'=>(!is_null('$data->cantpendiente'))?'data->cant':'$data->cantpendiente'),
		),
)); ?>
