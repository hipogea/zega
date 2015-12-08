<?php
/* @var $this ClasesmaestroController */
/* @var $model Clasesmaestro */

$this->breadcrumbs=array(
	'Clasesmaestros'=>array('index'),
	$model->codclasema,
);

$this->menu=array(
	//array('label'=>'List Clasesmaestro', 'url'=>array('index')),
	array('label'=>'Crear Clase', 'url'=>array('create')),
	array('label'=>'Actualizar Clase', 'url'=>array('update', 'id'=>$model->codclasema)),
	//array('label'=>'Delete Clasesmaestro', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->codclasema),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Clases', 'url'=>array('admin')),
);
?>

<h1>View Clasesmaestro #<?php echo $model->codclasema; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'codclasema',
		'nomclase',
		
	),
)); ?>
