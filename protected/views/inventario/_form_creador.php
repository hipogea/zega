<?php
/* @var $this InventarioController */
/* @var $model Inventario */
/* @var $form CActiveForm */
?>
<div class="division">
<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'inventario-form',
	'enableClientValidation'=>true,
    'clientOptions' => array(
         'validateOnSubmit'=>true,
         'validateOnChange'=>true       
     ),
	'enableAjaxValidation'=>FALSE,
)); ?>
      <h1> Crear Activo </h1>
	<p class="note">Los campos marcados con asterisco( <span class="required">*</span>)  son obligatorios.</p>

	<?php echo $form->errorSummary($model); ?>


  <div class="panelizquierdo">
	
	
			<?php 
			// esl estado es '01' POR DEFAULT '
			echo $form->hiddenField($model,'codestado',array('value'=>'10','border'=>0)); ?>



	  <div class="row">
		  <?php echo $form->labelEx($model,'tipo'); ?>
		  <?php
		  $datos = CHtml::listData(Tipoactivos::model()->findAll(),'codtipo','destipo');
		  echo $form->DropDownList($model,'tipo',$datos, array('empty'=>'--Indique el tipo--')  )  ;	?>
		  <?php echo $form->error($model,'tipo'); ?>
	  </div>
	  <div class="row">
						<?php echo $form->labelEx($model,'codigoaf'); ?>					
						<?php echo $form->textField($model,'codigoaf',array('size'=>14,'maxlength'=>14)); ?>
					<?php echo $form->error($model,'codigoaf'); ?>
			  </div>
					<div class="row">
							<?php echo $form->labelEx($model,'codarea'); ?>
							<?php  $datos = CHtml::listData(Areas::model()->findAll(array('order'=>'area')),'codarea','area');
								echo $form->DropDownList($model,'codarea',$datos, array('empty'=>'--Seleccione un area--')  )  ;
								?>
							<?php echo $form->error($model,'codarea') ?>
					</div>
			
	
	   <div class="row">
		<?php echo $form->labelEx($model,'codep'); ?>
		<?php //echo $form->textField($model,'codep',array('size'=>3,'maxlength'=>3)); ?>
		<?php  $datos1 = CHtml::listData(Embarcaciones::model()->findAll(array('order'=>'nomep')),'codep','nomep');
		  echo $form->DropDownList($model,'codep',$datos1, array('empty'=>'--Seleccione una ep--')  )  ;
		?>
		<?php echo $form->error($model,'codep'); ?>
		</div>

	  <div class="row">
		  <?php echo $form->labelEx($model,'codepanterior'); ?>
		  <?php //echo $form->textField($model,'codep',array('size'=>3,'maxlength'=>3)); ?>
		  <?php  $datos1 = CHtml::listData(Embarcaciones::model()->findAll(array('order'=>'nomep')),'codep','nomep');
		  echo $form->DropDownList($model,'codepanterior',$datos1, array('empty'=>'--Seleccione una ep--')  )  ;
		  ?>
		  <?php echo $form->error($model,'codepanterior'); ?>
	  </div>

	  <div class="row">
		  <?php echo $form->labelEx($model,'codeporiginal'); ?>
		  <?php //echo $form->textField($model,'codep',array('size'=>3,'maxlength'=>3)); ?>
		  <?php  $datos1 = CHtml::listData(Embarcaciones::model()->findAll(array('order'=>'nomep')),'codep','nomep');
		  echo $form->DropDownList($model,'codeporiginal',$datos1, array('empty'=>'--Seleccione una ep--')  )  ;
		  ?>
		  <?php echo $form->error($model,'codeporiginal'); ?>
	  </div>



		<div class="row">
		<?php echo $form->labelEx($model,'codpropietario'); ?>
	<?php  $datos = CHtml::listData(Centros::model()->findAll(array('order'=>'nomcen')),'codcen','nomcen');
					echo $form->DropDownList($model,'codpropietario',$datos, array('empty'=>'--Llene el Propietario--'));
					?>
          <?php echo $form->error($model,'codpropietario'); ?>
	</div>
		
             

	 <div class="row">
		<?php echo $form->labelEx($model,'codigosap'); ?>
		<?php echo $form->textField($model,'codigosap',array('size'=>5,'maxlength'=>5)); ?>
		<?php echo $form->error($model,'codigosap'); ?>
	</div>
	 <div class="row">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>40,'maxlength'=>40)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>
	
	 <div class="row">
		<?php echo $form->labelEx($model,'marca'); ?>
		<?php echo $form->textField($model,'marca',array('size'=>15,'maxlength'=>15)); ?>
		<?php echo $form->error($model,'marca'); ?>
	</div>

	 <div class="row">
		<?php echo $form->labelEx($model,'modelo'); ?>
		<?php echo $form->textField($model,'modelo',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'modelo'); ?>
	</div>
	
	
	  </div>
	

	<div class="panelderecho">
			
	
	

	
	

	<div class="row">
		<?php echo $form->labelEx($model,'serie'); ?>
		<?php echo $form->textField($model,'serie',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'serie'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'comentario'); ?>
		<?php echo $form->textArea($model,'comentario',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'comentario'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fecha'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
				'model'=>$model,
				'attribute'=>'fecha',
				'value'=>$model->fecha,
				'language'=>'es',
					// additional javascript options for the date picker plugin
				'options'=>array(
				'showAnim'=>'fold',
				'showButtonPanel'=>true,
				'autoSize'=>true,
				'dateFormat'=>'yy-mm-dd',
					'defaultDate'=>$model->fecha)));
		?>
		<?php echo $form->error($model,'fecha'); ?>
	</div>

	
	

		
		
	
    
		<div class="row">
		<?php echo $form->labelEx($model,'numerodocumento'); ?>	
		
		<?php echo $form->textField($model,'numerodocumento',array('size'=>20,'maxlength'=>20)); ?>		
		
		<?php echo $form->error($model,'numerodocumento'); ?>
		</div>
	
      <div class="row">
		<?php echo $form->labelEx($model,'coddocu'); ?>
		<?php  $datos = CHtml::listData(Documentos::model()->findAll(array('order'=>'desdocu')),'coddocu','desdocu');
		  echo $form->DropDownList($model,'coddocu',$datos, array('empty'=>'--Seleccione un documento--')  )  ;
		?>
		<?php echo $form->error($model,'coddocu'); ?>
	</div>
	

		

		<div class="row">		  
					<?php echo $form->labelEx($model,'codlugar'); ?>
					<?php  $datos = CHtml::listData(Lugares::model()->findAll(array('order'=>'deslugar')),'codlugar','deslugar');
					echo $form->DropDownList($model,'codlugar',$datos, array('empty'=>'--Seleccione un Lugar--')  )  ;
						?>
					<?php echo $form->error($model,'codlugar'); ?>
	  </div>
	

	
	 

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Registrar' : 'Grabar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->



<?php
//--------------------- begin new code --------------------------
   // add the (closed) dialog for the iframe
    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialog3',
    'options'=>array(
        'title'=>'Explorador',
        'autoOpen'=>false,
        'modal'=>true,
        'width'=>300,
        'height'=>300,
    ),
    ));
?>
<iframe id="cru-frame3" width="100%" height="100%"></iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>

</div>