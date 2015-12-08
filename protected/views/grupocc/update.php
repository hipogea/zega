<?php
/* @var $this GrupoccController */
/* @var $model Grupocc */

$this->breadcrumbs=array(
	'Grupoccs'=>array('index'),
	$model->codgrupo=>array('view','id'=>$model->codgrupo),
	'Update',
);

$this->menu=array(
	array('label'=>'List Grupocc', 'url'=>array('index')),
	array('label'=>'Create Grupocc', 'url'=>array('create')),
	array('label'=>'View Grupocc', 'url'=>array('view', 'id'=>$model->codgrupo)),
	array('label'=>'Manage Grupocc', 'url'=>array('admin')),
);
?>

<h1>Update Grupocc <?php echo $model->codgrupo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>