<?php
/* @var $this ChoferesController */
/* @var $model Choferes */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'grupocompras-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'codgrupo'); ?>
		<?php echo $form->textField($model,'codgrupo',array('size'=>3,'maxlength'=>3)); ?>
		<?php echo $form->error($model,'codgrupo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nomgru'); ?>
		<?php echo $form->textField($model,'nomgru',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'nomgru'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->