<?php
/* @var $this DcotmaterialesController */
/* @var $model Dcotmateriales */
/* @var $form CActiveForm */
?>

<div class="division">
<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'detgui-form',
	'enableClientValidation'=>TRUE,
    'clientOptions' => array(
        'validateOnSubmit'=>true,
         'validateOnChange'=>true       
     ),
	'enableAjaxValidation'=>FALSE,
	



)); ?>
<?php echo $form->errorSummary($model); ?>

<div class="row">

						<?php echo $form->labelEx($model,'tipoitem'); ?>
						<?php //print_r($model->attributes);yii::app()->end(); ?>
						<?php echo Chtml::textField('cantidax',$model->tipoitem,array('disabled'=>'disabled','maxlenght'=>1)); ?>
	
</div>











	<div class="row">
		<?php echo $form->labelEx($model,'cant'); ?>
		<?php echo $form->textField($model,'cant'); ?>
		<?php echo $form->error($model,'cant'); ?>
	</div>





	<div class="row">
		<?php echo $form->labelEx($model,'codentro'); ?>
		<?php  $datos1 = CHtml::listData(Centros::model()->findAll(array('order'=>'nomcen')),'codcen','nomcen');
		echo $form->DropDownList($model,'codentro',$datos1, array('empty'=>'--Seleccione una referencia--',  'disabled'=>'',
		) ) ;
		?>
		<?php echo $form->error($model,'codentro'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'codigoalma'); ?>
		<?php echo $form->textField($model,'codigoalma',array('size'=>3,'maxlength'=>3, 'disabled'=>'')); ?>
		<?php echo $form->error($model,'codigoalma'); ?>
	</div>


	


	<div class="row">
		<?php echo $form->labelEx($model,'codart'); ?>
		<?php $this->widget('ext.matchcode1.MatchCode1',array(		
												'nombrecampo'=>'codart',
												'pintarcaja'=>1, ///indica si debe de pintar el textbox al iniciar 
												'ordencampo'=>6,
												'controlador'=>'Docompratemp',
												'relaciones'=>$model->relations(),
												'tamano'=>8,
												'habilitado'=>true,
												'model'=>$model,
												'form'=>$form,
												'nombredialogo'=>'cru-dialog3',
												'nombreframe'=>'cru-frame3',
												'nombrearea'=>'miffuufu',
											'nombrecampoareemplazar'=>'descri',
											//'comopintar'=>'c_descri',//Significa que va a ha reemplazar al imput del campo
													));
				?>

		<?php echo $form->error($model,'codart'); ?>									
		<?php echo $form->error($model,'descri'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'um'); ?>


		<?php  echo Chtml::ajaxLink(
			Chtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."filter.png"),
			CController::createUrl('Ums/cargaum'), array(
				'type' => 'POST',
				'url' => CController::createUrl('Ums/cargaum'), //  la acci?n que va a cargar el segundo div
				'update' => '#Docompratemp_um', // el div que se va a actualizar
				'data'=>array('codigomaterial'=>'js:Docompratemp_codart.value'),
			)

		);?>

		<?php IF($model->isNewRecord ){ ?>
<?php
//$datos = CHtml::listData(Ums::model()->findAll(),'um','desum');
			$datos=array();
			echo $form->DropDownList($model,'um',$datos, array(  'maxlength'=>4)  )  ;
			?>
		<?php }  else { ?>
			<?php echo $form->DropDownList($model,'um',Alconversiones::Listadoums($model->codart), array('empty'=>'--Um--', 'maxlength'=>4)  )  ; ?>


		<?php   } ?>




		<?php echo $form->error($model,'um'); ?>

	</div>





	<div class="row">
		<?php echo $form->labelEx($model,'punit'); ?>
		<?php echo $form->textField($model,'punit'); ?>
		<?php echo $form->error($model,'punit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'disp'); ?>
		<?php echo $form->textField($model,'disp',array('size'=>2,'maxlength'=>2)); ?>
		<?php echo $form->error($model,'disp'); ?>
	</div>



	





	<div class="row">
		<?php echo $form->labelEx($model,'stock'); ?>
		<?php echo $form->textField($model,'stock'); ?>
		<?php echo $form->error($model,'stock'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'iddesolpe'); ?>
		<?php echo $form->textField($model,'iddesolpe'); ?>
		<?php echo $form->error($model,'iddesolpe'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'detalle'); ?>
		<?php echo $form->textArea($model,'detalle',array('rows'=>2, 'cols'=>50)); ?>
		<?php echo $form->error($model,'detalle'); ?>
	</div>

	<div class="row">
		
		<?php

		 if ( !$model->isNewRecord) {

            echo $form->labelEx($model,'estadodetalle');

		  echo CHtml::textField('hola',
   			  Estado::model()->find('codestado=:miestado and codocu=:midocumento',array(':midocumento'=>'022',':miestado'=>$model->estadodetalle))->estado,
  			  array('id'=>'pepin','disabled'=>'disabled','size'=>20));

					}

		 ?>
		
	</div>





	<div class="row">
		<?php echo ($model->isNewRecord)?$form->hiddenField($model,'hidguia',array('value'=>$idcabeza)):""; ?>
	
		
	</div>

	

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>






<?php $this->endWidget(); ?>

</div><!-- form -->
</div>
<?php
//--------------------- begin new code --------------------------
   // add the (closed) dialog for the iframe
    $this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'cru-dialog3',
    'options'=>array(
        'title'=>'Explorador',
        'autoOpen'=>false,
        'modal'=>true,
        'width'=>800,
        'height'=>500,
    ),
    ));
?>
<iframe id="cru-frame3" width="100%" height="100%"></iframe>
<?php
 
$this->endWidget();
//--------------------- end new code --------------------------
?>