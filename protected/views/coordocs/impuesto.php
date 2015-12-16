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
		//'simbolo',
		array('name'=>'valor','value'=>'"(".round($data["valor"],0)."%)"','footer'=>'TOTAL : '),

		//'valor',
		//'valorap',
		array('name'=>'valorap','value'=>'$data["simbolo"]." ".MiFactoria::decimal($data["valorap"],2)','footer'=>$data->simbolo."  ".CHTml::openTag("span",array("style"=>"font-size:13px;font-weight:bold;")).MiFactoria::decimal($grantotal,2).CHTml::closeTag("span")),
			),
)); ?>

	</div>
