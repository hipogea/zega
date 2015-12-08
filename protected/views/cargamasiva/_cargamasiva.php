<?php
/* @var $this DetguiController */
/* @var $model Detgui */
/* @var $form CActiveForm */
?>
<div style="overflow:auto;">
<div class="division">
<div class="wide form">


		<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'detgui-form',
	'enableClientValidation'=>TRUE,
			'clientOptions' => array(
				'validateOnSubmit'=>TRUE,
				'validateOnChange'=>TRUE  ,
			),
	'enableAjaxValidation'=>FALSE,
	



)); ?>




	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		
		<?php echo ($model->isNewRecord)?$form->hiddenField($model,'id',array('value'=>$idcabeza)):''; ?>
		
	</div>
	
  <div class="row">
		<?php echo $form->labelEx($model,'aliascampo'); ?>
		<?php echo $form->textField($model,'aliascampo',array('size'=>40,'maxlength'=>40)); ?>
		<?php echo $form->error($model,'aliascampo'); ?>
	</div><div class="row">
		<?php echo $form->labelEx($model,'nombrecampo'); ?>
		<?php echo $form->textField($model,'nombrecampo',array('size'=>1,'maxlength'=>1, 'disabled'=>'disabled')); ?>
		<?php echo $form->error($model,'nombrecampo'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'requerida'); ?>
		<?php echo $form->checkBox($model,'requerida',array('disabled'=>'disabled')); ?>
		<?php echo $form->error($model,'requerida'); ?>
	</div>
      <div class="row">
		<?php echo $form->labelEx($model,'longitud'); ?>
		<?php echo $form->textField($model,'longitud',array('disabled'=>'')); ?>
		<?php echo $form->error($model,'longitud'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'activa'); ?>
		<?php echo $form->checkBox($model,'activa',array('disabled'=>'disabled')); ?>
		<?php echo $form->error($model,'activa'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'tipo'); ?>
		<?php echo $form->textField($model,'tipo',array('disabled'=>'disabled')); ?>
		<?php echo $form->error($model,'tipo'); ?>
	</div>
       <div class="row">
		<?php echo $form->labelEx($model,'orden'); ?>
		<?php echo $form->textField($model,'orden'); ?>
		<?php echo $form->error($model,'orden'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Actualizar'); ?>
	</div>



<?php $this->endWidget(); ?>

</div><!-- form -->



</div>
</div>