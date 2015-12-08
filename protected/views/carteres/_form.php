<?php
/* @var $this CarteresController */
/* @var $model Carteres */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'carteres-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idcarter'); ?>
		<?php echo $form->textField($model,'idcarter'); ?>
		<?php echo $form->error($model,'idcarter'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'idequipo'); ?>
		<?php echo $form->textField($model,'idequipo'); ?>
		<?php echo $form->error($model,'idequipo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'capacidad'); ?>
		<?php echo $form->textField($model,'capacidad'); ?>
		<?php echo $form->error($model,'capacidad'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipoaceite'); ?>
		<?php echo $form->textField($model,'tipoaceite',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'tipoaceite'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'horascambio'); ?>
		<?php echo $form->textField($model,'horascambio'); ?>
		<?php echo $form->error($model,'horascambio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipocarter'); ?>
		<?php echo $form->textField($model,'tipocarter',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'tipocarter'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'haceite'); ?>
		<?php echo $form->textField($model,'haceite'); ?>
		<?php echo $form->error($model,'haceite'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hmuestra'); ?>
		<?php echo $form->textField($model,'hmuestra'); ?>
		<?php echo $form->error($model,'hmuestra'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nummuestras'); ?>
		<?php echo $form->textField($model,'nummuestras'); ?>
		<?php echo $form->error($model,'nummuestras'); ?>
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
		<?php echo $form->labelEx($model,'fulectura'); ?>
		<?php echo $form->textField($model,'fulectura'); ?>
		<?php echo $form->error($model,'fulectura'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fumuestra'); ?>
		<?php echo $form->textField($model,'fumuestra'); ?>
		<?php echo $form->error($model,'fumuestra'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fucambio'); ?>
		<?php echo $form->textField($model,'fucambio'); ?>
		<?php echo $form->error($model,'fucambio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'horometro'); ?>
		<?php echo $form->textField($model,'horometro'); ?>
		<?php echo $form->error($model,'horometro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codigo'); ?>
		<?php echo $form->textField($model,'codigo',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'codigo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'activo'); ?>
		<?php echo $form->textField($model,'activo',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'activo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hucambio'); ?>
		<?php echo $form->textField($model,'hucambio'); ?>
		<?php echo $form->error($model,'hucambio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'casco'); ?>
		<?php echo $form->textField($model,'casco'); ?>
		<?php echo $form->error($model,'casco'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->