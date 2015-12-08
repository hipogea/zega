<?php
/* @var $this CmotivoController */
/* @var $model CMotivo */

$this->breadcrumbs=array(
	'Cmotivos'=>array('index'),
	$model->codmotivo=>array('view','id'=>$model->codmotivo),
	'Update',
);

$this->menu=array(
	array('label'=>'List CMotivo', 'url'=>array('index')),
	array('label'=>'Create CMotivo', 'url'=>array('create')),
	array('label'=>'View CMotivo', 'url'=>array('view', 'id'=>$model->codmotivo)),
	array('label'=>'Manage CMotivo', 'url'=>array('admin')),
);
?>

<h1>Update CMotivo <?php echo $model->codmotivo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>