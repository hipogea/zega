<?php
/* @var $this AlinventarioController */
/* @var $model Alinventario */

$this->breadcrumbs=array(
	'Alinventarios'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Alinventario', 'url'=>array('index')),
	array('label'=>'Create Alinventario', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-form form').submit(function(){
	$('#alinventario-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
$('#alinventario-grid2').yiiGridView('update', {
		data: $(this).serialize()
	});


	return false;
});
");
?>

<h1>Inventario</h1>

<?php
echo CHtml::Link('new',Yii::app()->createurl('/alinventario/pintareservas', array('material'=> '1804233')),array('target'=>'_blank'));

?>
<?php // echo CHtml::link('Filtrar','#',array('class'=>'search-button')); ?>
<div class="search-form" style="">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->


 <?php
	  	$proveedor=	$model->search();
	  
	  ?>
<div id="zona_reserva"></div>
<div class="division">
<?php $gridWidget=$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'alinventario-grid',
	        //'itemsCssClass'=>'table table-striped table-bordered table-hover',
	'itemsCssClass'=>'table table-striped table-bordered table-hover',
	'dataProvider'=>$proveedor,
	//'filter'=>$model,
	'columns'=>array(
		//'codart',
		'codalm',
		'codcen',
		array('name'=>'codart','type'=>'raw','value'=>'CHtml::link($data->codart,Yii::app()->createurl(\'/alinventario/update\', array(\'id\'=> $data->id ) ) )'),
		'cantlibre',
		//'cantres',
		array('name'=>'cantres','type'=>'raw','value'=>'CHtml::Link($data->cantres,
							Yii::app()->createurl(\'/alinventario/pintareservas\', array(\'material\'=> $data->codart)),
							array(\'target\'=>\'_blank\')
		)'),
		'canttran',
		'desum',

		'ubicacion',

		'descripcion',
		array('name'=>'codart','header'=>'Imagen','type'=>'raw','value'=>'Numeromaximo::Pintaimagen("/materiales/".$data->codart.".JPG","/materiales/NODISPONIBLE.JPG",40,40)'),

		//'punit',
		array('name'=>'punit','value'=>'MiFactoria::decimal($data->punit)'),
		//	array('name'=>'pttotal','value'=>'round($data->pttotal,3)','footer'=>round($model->getTotal($model->search()),2)),
		array('name'=>'pttotal','value'=>'MiFactoria::decimal($data->pttotal)','footer'=>MiFactoria::decimal($model->getTotal($model->search()))),
		
		'codmon',

		
                
		//'creadopor',
		
		
		
	),
)); ?>

<?PHP
//Capture your CGridView widget on a variable
//$gridWidget=$this->widget('bootstrap.widgets.TbGridView', array( . . .
//$this->renderExportGridButton($gridWidget,'Exportar',array('class'=>''));
?>

</div>

<?php
//Capture your CGridView widget on a variable
//$gridWidget=$this->widget('bootstrap.widgets.TbGridView', array( . . .
$this->renderExportGridButton($gridWidget,'Exportar resultados',array('class'=>'btn btn-info pull-right'));
?>


