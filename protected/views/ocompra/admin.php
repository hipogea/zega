<?php
/* @var $this CotiController */
/* @var $model Coti */

$this->breadcrumbs=array(
	'Cotis'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'Liberacion masiva', 'url'=>array('libmasiva')),
	array('label'=>'Crear Oc', 'url'=>array('CreaDocumento')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#grid1').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>COMPRAS</h1>



<?php echo CHtml::link('Buscar','#',array('class'=>'search-button')); ?>


<div class="search-form" style="display:none">
	<div class="division">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->
</DIV>


<?PHP
 $this->widget('ext.groupgridview.GroupGridView', array(
      'id' => 'grid1',
      'dataProvider'=>$model->search(),
      'mergeColumns' => array('numcot','despro'),

      'columns' => array(
		  ARRAY('name'=>'numcot','header'=>'Numero','type'=>'raw','value'=>'CHTml::link($data->numcot,Yii::app()->createurl("ocompra/editadocumento", array("id"=> $data->idguia ) ))'),
		  array(
			  'name'=>'fechanominal',
			  'header'=>'Fec',
			  'value'=>'date("d.m.y", strtotime($data->fechanominal))','htmlOptions'=>array('width'=>'50')
		  ),
		  'despro',
        'codart',
        'cant',
        'desum',
        'descri',
		  ARRAY('name'=>'entregado','type'=>'html','header'=>'Entr.','value'=>'($data->entregado>0)?$data->entregado.CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."Cast.png"):""','htmlOptions'=>array("width"=>35)),
        ARRAY('name'=>'simbolo','header'=>'.','value'=>'$data->simbolo'),
		  ARRAY('name'=>'punit','header'=>'P.unit','value'=>'MiFactoria::decimal($data->punit,2)'),
		  ARRAY('name'=>'subto','header'=>'Subtotal','value'=>'MiFactoria::decimal($data->subto,2)'),
		  ARRAY('name'=>'descontado','header'=>'Dcto','value'=>'MiFactoria::decimal($data->descontado,2)'),
		  ARRAY('name'=>'totalneto','header'=>'Neto','value'=>'MiFactoria::decimal($data->totalneto,2)'),
		      ),
    ));

?>

<?php /*$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'coti-grid',
	'dataProvider'=>$model->search(),
	//'filter'=>$model,
	'columns'=>array(
		ARRAY('name'=>'numcot','header'=>'OC','type'=>'raw','value'=>'CHtml::link($data->numcot,array("ocompra/update/".$data->idguia))'),
		'despro',
		'fecdoc',
		'texto',
		ARRAY('name'=>'tipoimputacion','header'=>'.','value'=>'$data->tipoimputacion'),
		'codart',
		'cant',
		'um',
		'descri',
		ARRAY('name'=>'simbolo','header'=>'.','value'=>'$data->simbolo'),
		'punit',
		'subto',
        //'docompra_estado.estadeedeo',
		//'codestado',
		//'texto',s
		/*
		'textolargo',
		'tipologia',
		'moneda',
		'orcli',
		'descuento',
		'usuario',
		'coddocu',
		'creado',
		'modificado',
		'creadopor',
		'creadoel',
		'modificadopor',
		'modificadoel',
		'codtipofac',
		'codsociedad',
		'codgrupoventas',
		'codtipocotizacion',
		'validez',
		'codcentro',
		'nigv',
		'codobjeto',
		'fechapresentacion',
		'fechanominal',
		'idguia',
		'tenorsup',
		'tenorinf',
		'montototal',
		*/
		/*array(
			'class'=>'CButtonColumn',
		),*/
	/*),
)); */ ?>