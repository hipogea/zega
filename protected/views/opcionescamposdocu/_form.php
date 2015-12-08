<?php
/* @var $this OpcionescamposdocuController */
/* @var $model Opcionescamposdocu */
/* @var $form CActiveForm */
?>

<div class="division">
<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'opcionescamposdocu-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
		<?php echo $form->error($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codocu'); ?>
		<?php echo $form->textField($model,'codocu',array('size'=>3,'maxlength'=>3)); ?>
		<?php echo $form->error($model,'codocu'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'campo'); ?>
		<?php echo $form->textField($model,'campo',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'campo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombrecampo'); ?>
		<?php echo $form->textField($model,'nombrecampo',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'nombrecampo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipodato'); ?>
		<?php echo $form->textField($model,'tipodato',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'tipodato'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'longitud'); ?>
		<?php echo $form->textField($model,'longitud'); ?>
		<?php echo $form->error($model,'longitud'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombredelmodelo'); ?>
		<?php echo $form->textField($model,'nombredelmodelo',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'nombredelmodelo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'primercampolista'); ?>
		<?php echo $form->textField($model,'primercampolista',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'primercampolista'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'segundocampolista'); ?>
		<?php echo $form->textField($model,'segundocampolista',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'segundocampolista'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'seleccionable'); ?>
		<?php echo $form->textArea($model,'seleccionable',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'seleccionable'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
</div>