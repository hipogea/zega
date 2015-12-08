<?php
/* @var $this ContactosController */
/* @var $model Contactos */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'objetos-form',
	'enableAjaxValidation'=>false,
)); ?>

	<div class="row">
	
		<?php 
		if($model->isNewRecord )
		    {
													
												echo $form->hiddenField($model,'codpro',array('size'=>6,'maxlength'=>6,'value'=>$codpro)); 	
													//echo "el contacto es : ".$codpro;
												} else  {
													
												echo $form->textField($model,'codpro',array('disabled'=>'disabled','size'=>6,'maxlength'=>6,'value'=>$codpro)); 	
												}
			
			
			?>
		
		
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codobjeto'); ?>
		<?php echo $form->textField($model,'codobjeto',array('size'=>30,'maxlength'=>30,'disabled'=>'disabled')); ?>
		<?php echo $form->error($model,'codobjeto'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombreobjeto'); ?>
		<?php echo $form->textField($model,'nombreobjeto',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'nombreobjeto'); ?>
	</div>

	
	
	
	
	
	

	

	

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->