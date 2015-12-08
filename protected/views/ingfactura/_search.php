<?php
/* @var $this IngfacturaController */
/* @var $model Ingfactura */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codpro'); ?>
		<?php echo $form->textField($model,'codpro',array('size'=>8,'maxlength'=>8)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecha'); ?>
		<?php echo $form->textField($model,'fecha'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechadoc'); ?>
		<?php echo $form->textField($model,'fechadoc'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numerodoc'); ?>
		<?php echo $form->textField($model,'numerodoc',array('size'=>13,'maxlength'=>13)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'seriedoc'); ?>
		<?php echo $form->textField($model,'seriedoc',array('size'=>5,'maxlength'=>5)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numrecepcion'); ?>
		<?php echo $form->textField($model,'numrecepcion',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>40,'maxlength'=>40)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'iduser'); ?>
		<?php echo $form->textField($model,'iduser'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechacrea'); ?>
		<?php echo $form->textField($model,'fechacrea'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codcentro'); ?>
		<?php echo $form->textField($model,'codcentro',array('size'=>4,'maxlength'=>4)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numocompra'); ?>
		<?php echo $form->textField($model,'numocompra',array('size'=>12,'maxlength'=>12)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idgarita'); ?>
		<?php echo $form->textField($model,'idgarita',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->