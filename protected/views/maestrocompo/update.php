<?php
/* @var $this MaestrocompoController */
/* @var $model Maestrocompo */

$this->breadcrumbs=array(
	'Maestrocompos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	//array('label'=>'List Maestrocompo', 'url'=>array('index')),
	array('label'=>'Crear material', 'url'=>array('create')),
	//array('label'=>'View Maestrocompo', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Listado materiales', 'url'=>array('admin')),
);
?>
    <span class="summary-icon2">
           <img src="<?php echo Yii::app()->theme->baseUrl ;?>/img/caja1.png" width="25" height="25" alt="">
</span>

<span class="label label-info pull-right"><?php echo ($habilitado=="")?'Actualizar ':'Visualizar '; ?>material <?php echo $model->codigo; ?></span>

<?php echo $this->renderPartial('_form', array('model'=>$model,'habilitado'=>$habilitado)); ?>