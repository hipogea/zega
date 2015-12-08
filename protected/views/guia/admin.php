<?php


 //echo Tipozarpe::model()->findByPk('05')->cuentahoras;

$this->menu=array(
	//array('label'=>'List Inventario', 'url'=>array('index')),
	array('label'=>'Talleres Ext.', 'url'=>array('/vwpendientetaller')),
	//array('label'=>'Observaciones ', 'url'=>array('observaciones')),
	//array('label'=>'Confirmar movimientos', 'url'=>array('/vwloginventari')),
);
?>
<?PHP
Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('guia-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


<h1><?php echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemagrid'].'truck.png');  ?> Documentos de transporte</h1>


<?php //echo CHtml::link('Busqueda ','#',array('class'=>'search-button')); ?>
<div class="search-form" >
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->









<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'guia-grid',
	'cssFile' => Yii::app()->getTheme()->baseUrl.'/css/grilla_naranja.css',
		'dataProvider'=>$proveedor,	
	//'filter'=>$model,
	'columns'=>array(
	    'c_serie',
		array('name'=>'c_numgui','type'=>'raw','value'=>'CHtml::link($data->c_numgui, Yii::app()->createurl(\'/guia/visualiza\', array(\'id\'=> $data->id ) ))'),
		array('name'=>'.','type'=>'html', 'value'=>'CHTml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."flag_blue.png")'),
		'c_trans',
		'razondestinatario',		
		array('name'=>'d_fectra', 'value'=>'date("d/m/Y",strtotime($data->d_fectra))'),
		'n_cangui',
		//'c_codgui',
		'c_descri',
		'nomep',
		'c_codactivo',
		'desmotivo',

		
		//'usuario',
		//array('name'=>'inventario_codigoaf','header'=>'Plaquita','value'=>'$data->inventario->codigoaf'),
		//array('name'=>'inventario_codigoaf','header'=>'C. Sap','type'=>'raw','value'=>'CHtml::link($data->inventario->codigoaf,array("inventario/detalle","id"=>$data->inventario->idinventario))'),
		//array('name'=>'inventario_codigosap','header'=>'C. Sap','type'=>'raw','value'=>'CHtml::link($data->inventario->codigosap,array("inventario/detalle","id"=>$data->inventario->idinventario))'),		
		//'inventario.descripcion',
		//array('name'=>'inventario_descripcion','header'=>'Descripcion','value'=>'$data->inventario->descripcion'),
		//'inventario.barcoactual.nomep',
		//'inventario.documento.desdocu',
		//'fecha',
		//'descri',
		//'mobs',		
		//'id',
		//'hidinventario',
		//array('name'=>'estado_estado','header'=>'Estado','value'=>'$data->estado->estado'),
		
	),
)); ?>

