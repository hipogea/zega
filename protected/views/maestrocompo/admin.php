<div class="division">

<?php
/* @var $this MaestrocompoController */
/* @var $model Maestrocompo */

$this->breadcrumbs=array(
	'Maestrocompos'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Maestrocompo', 'url'=>array('index')),
	array('label'=>'Crear material', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#maestrocompo-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Maestro de materiales</h1>




<?php echo CHtml::link('Filtrar','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
    'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $gridWidget=$this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'maestrocompo-grid',
    'itemsCssClass'=>'table table-striped table-bordered table-hover',
   // 'cssFile'=>Yii::app()->getTheme()->baseUrl.'/css/style-grid.css',  // your version of css file
    'dataProvider'=>$model->search(),
   // 'filter'=>$model,
    'columns'=>array(
        //'codigo',
        array('name'=>'codigo','header'=>'codigo','type'=>'raw','value'=>'CHtml::openTag("span",array("style"=>"color:red; font-weight:bold;")).CHtml::link($data->codigo,Yii::app()->createurl(\'/maestrocompo/update\', array(\'id\'=> $data->codigo ) )).CHtml::closeTag("span")'),
        array('name'=>'codigo','header'=>'Imagen','type'=>'raw','value'=>'Numeromaximo::Pintaimagen("/materiales/".$data->codigo.".JPG","/materiales/NODISPONIBLE.JPG",40,40)'),
        //array('name'=>'codigo','type'=>'raw','value'=>'CHtml::image("/recurso/materiales/".$data->codigo.".JPG","",array("height"=>30,"width"=>"30"))'),
        'maestro_ums.desum',
        'descripcion',
        'marca',
        'modelo',
        'nparte',
      //  'codpadre',
        'esrotativo',
       // 'um',
        /*
        'descripcion',
        'detalle',
        'modificadopor',
        'modificadoel',
        'creadoel',
        'creadopor',
        'clase',
        'codmaterial',
        'flag',
        'codtipo',
        'id',

        array(
            'class'=>'CButtonColumn',
        ),
         */
    ),
)); ?>

</div>

<?PHP
//Capture your CGridView widget on a variable
//$gridWidget=$this->widget('bootstrap.widgets.TbGridView', array( . . .
$this->renderExportGridButton($gridWidget,'Exportar',array('class'=>''));
?>