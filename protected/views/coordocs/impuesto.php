<div style="position:absolute; left:<?php echo $xresumen; ?>px; top:<?php echo $yresumen; ?>px">

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'impuestos-grid',
	'summaryText'=>'',
	'hideHeader'=>true,
	//'cssFile' => Yii::app()->getTheme()->baseUrl.'/css/grilla_naranja.css',
	'dataProvider'=>Yii::app()->impuestos->dataimpuestos($codocu,$idocu),
	//'filter'=>$model,
	'columns'=>array(
		'descripcion',
		'abreviatura',
		'valorap',	),
)); ?>

	</div>
