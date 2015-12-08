<?php
/* @var $this EstadoController */
/* @var $model Estado */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'estado-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'codestado'); ?>
		<?php echo $form->textField($model,'codestado',array('size'=>2,'maxlength'=>2)); ?>
		<?php echo $form->error($model,'codestado'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codocu'); ?>
		<?php echo $form->textField($model,'codocu',array('size'=>3,'maxlength'=>3)); ?>
		<?php echo $form->error($model,'codocu'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estado'); ?>
		<?php echo $form->textField($model,'estado',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'estado'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ordenn'); ?>
		<?php echo $form->textField($model,'ordenn'); ?>
		<?php echo $form->error($model,'ordenn'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creadopor'); ?>
		<?php echo $form->textField($model,'creadopor',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'creadopor'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creadoel'); ?>
		<?php echo $form->textField($model,'creadoel',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'creadoel'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'modificadopor'); ?>
		<?php echo $form->textField($model,'modificadopor',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'modificadopor'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'modificadoel'); ?>
		<?php echo $form->textField($model,'modificadoel',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'modificadoel'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'eseditable'); ?>
		<?php echo $form->textField($model,'eseditable'); ?>
		<?php echo $form->error($model,'eseditable'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'esanulable'); ?>
		<?php echo $form->textField($model,'esanulable'); ?>
		<?php echo $form->error($model,'esanulable'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->