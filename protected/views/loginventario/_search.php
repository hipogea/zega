<?php
/* @var $this LoginventarioController */
/* @var $model Loginventario */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idlog'); ?>
		<?php echo $form->textField($model,'idlog'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hidinventario'); ?>
		<?php echo $form->textField($model,'hidinventario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'c_estado'); ?>
		<?php echo $form->textField($model,'c_estado',array('size'=>1,'maxlength'=>1)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codep'); ?>
		<?php echo $form->textField($model,'codep',array('size'=>3,'maxlength'=>3)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comentario'); ?>
		<?php echo $form->textArea($model,'comentario',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecha'); ?>
		<?php echo $form->textField($model,'fecha'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'coddocu'); ?>
		<?php echo $form->textField($model,'coddocu',array('size'=>3,'maxlength'=>3)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'creadopor'); ?>
		<?php echo $form->textField($model,'creadopor',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'creadoel'); ?>
		<?php echo $form->textField($model,'creadoel',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modificadopor'); ?>
		<?php echo $form->textField($model,'modificadopor',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modificadoel'); ?>
		<?php echo $form->textField($model,'modificadoel',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codlugar'); ?>
		<?php echo $form->textField($model,'codlugar',array('size'=>6,'maxlength'=>6)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codigopadre'); ?>
		<?php echo $form->textField($model,'codigopadre',array('size'=>5,'maxlength'=>5)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numerodocumento'); ?>
		<?php echo $form->textField($model,'numerodocumento',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'adicional'); ?>
		<?php echo $form->textField($model,'adicional',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codestado'); ?>
		<?php echo $form->textField($model,'codestado',array('size'=>2,'maxlength'=>2)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codepanterior'); ?>
		<?php echo $form->textField($model,'codepanterior',array('size'=>3,'maxlength'=>3)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codlugarant'); ?>
		<?php echo $form->textField($model,'codlugarant',array('size'=>6,'maxlength'=>6)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'iddocu'); ?>
		<?php echo $form->textField($model,'iddocu'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->