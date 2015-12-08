<?php
/* @var $this LugaresController */
/* @var $model Lugares */

$this->breadcrumbs=array(
	'Lugares'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Lugares', 'url'=>array('index')),
	array('label'=>'Crear', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('lugares-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Lugares</h1>



<?php echo CHtml::link('Buscar','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'lugares-grid',
	'dataProvider'=>$model->search(),
	'cssFile' => Yii::app()->getTheme()->baseUrl.'/css/grilla_naranja.css',
	//'filter'=>$model,
	'columns'=>array(
		'codlugar',
		'deslugar',
		'despro',
		'c_direc',
		//'centrito.nomcen',
		//'provincia',
		//'claselugar',
		'codpro',
		'departamento',
		'provincia',
		'distrito',
		//'n_direc',
		array(
			'template'=>'{edit,view}',
			'class'=>'CButtonColumn',
		),
	),
)); ?>
