<?php
/* @var $this IngfacturaController */
/* @var $model Ingfactura */

$this->breadcrumbs=array(
	'Ingfacturas'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'Ingresos', 'url'=>array('index')),
	array('label'=>'Nuevo Ingreso', 'url'=>array('crearingreso')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#ingfactura-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Recepcion de Facturas</h1>




<?php echo CHtml::link('Filtro','#',array('class'=>'search-button')); ?>
<div class="search-form" >
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'ingfactura-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'codpro',
		'fecha',
		'fechadoc',
		'numerodoc',
		'seriedoc',
		/*
		'numrecepcion',
		'descripcion',
		'iduser',
		'frechacrea',
		'codcentro',
		'numocompra',
		'idgarita',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
