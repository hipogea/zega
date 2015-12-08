<?php
/* @var $this CentrosController */
/* @var $model Centros */

$this->breadcrumbs=array(
	'Centroses'=>array('index'),
	$model->codcen=>array('view','id'=>$model->codcen),
	'Update',
);

$this->menu=array(
	//array('label'=>'List Centros', 'url'=>array('index')),
	array('label'=>'Crear Centro', 'url'=>array('create')),
	//array('label'=>'View Centros', 'url'=>array('view', 'id'=>$model->codcen)),
	array('label'=>'Listado', 'url'=>array('admin')),
);
?>

<h1>Actualizar centro <?php echo $model->codcen; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>