<?php
/* @var $this IngfacturaController */
/* @var $model Ingfactura */

$this->breadcrumbs=array(
	'Ingfacturas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Ingfactura', 'url'=>array('index')),
	array('label'=>'Create Ingfactura', 'url'=>array('create')),
	array('label'=>'Update Ingfactura', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Ingfactura', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Ingfactura', 'url'=>array('admin')),
);
?>

<h1>View Ingfactura #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'codpro',
		'fecha',
		'fechadoc',
		'numerodoc',
		'seriedoc',
		'numrecepcion',
		'descripcion',
		'iduser',
		'frechacrea',
		'codcentro',
		'numocompra',
		'idgarita',
	),
)); ?>
