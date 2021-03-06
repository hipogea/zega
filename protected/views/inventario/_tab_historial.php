
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'inventario-grid',
	//'filter'=>$model,
	'dataProvider'=>$proveedorlog,	
	'cssFile' => ''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemagrid'].'style_original.css',  // your version of css file
	'columns'=>array(
	    array('name'=>'hidinventario','visible'=>false),
	      //array('name'=>'barcooriginal','header'=>'Origen',
		  array('name'=>'fecha','header'=>'Fecha','value'=>'date("d/m/Y",strtotime($data->fecha))'),
		  	array('name'=>'coddocu','header'=>'.', 'type'=>'raw','value'=>'($data->coddocu=="001")?CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."arriba.png","",array("width"=>10, "height"=>10)):CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."abajo.png","",array("width"=>10, "height"=>10))'),
				  array('name'=>'guias.cod_cen','header'=>'Centro'),
				array('name'=>'Documento','header'=>'Documento','value'=>'$data->documentos->desdocu'),
		array('name'=>'numerodocumento','header'=>'Numero','type'=>'raw','value'=>'CHtml::link($data->numerodocumento, Yii::app()->createurl(\'/guia/update\', array(\'id\'=> $data->iddocu ) ))'),		
		array('name'=>'barcoactual.nomep','header'=>'Actual'),
		array('name'=>'barcoactual.nomep','header'=>'Anterior'),
		array('name'=>'fecha','header'=>'Fecha','value'=>'date("d/m/Y",strtotime($data->fecha))'),
		array('name'=>'lugares.deslugar','header'=>'Lugar'),
		//array('name'=>'comentario','header'=>'Comentario'),
		
	),
)); 
?>

