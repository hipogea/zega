<?php
/* @var $this CotiController */
/* @var $model Coti */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class='division_1'>
				<div style="float: left; ">
			        <?php echo $form->labelEx($model,'codentro'); ?>
					<?php  $datos = CHtml::listData(Centros::model()->findAll(array('order'=>'nomcen')),'codcen','nomcen');
					echo $form->DropDownList($model,'codentro',$datos, array('empty'=>'--Seleccione un centro --')  );
					?>
				</div>

		<div class="row">
			<?php echo $form->labelEx($model,'codigoalma'); ?>
			<?php  $datos6 = CHtml::listData(Almacenes::model()->findAll(),'codalm','nomal');
			echo $form->DropDownList($model,'codigoalma',$datos6, array('empty'=>'--Seleccione un almacen --')  );
			?>
		</div>

				<div class="row">
					<?php echo $form->label($model,'texto'); ?>
					<?php echo $form->textField($model,'texto',array('size'=>30,'maxlength'=>30)); ?>
				</div>

				<div class="row">
					<?php // echo $form->label($model,'c_serie'); ?>
					<?php //echo $form->textField($model,'c_serie',array('size'=>4,'maxlength'=>4)); ?>
				</div>

	
				<div class="row">
					<?php echo $form->label($model,'numcot'); ?>
					<?php echo $form->textField($model,'numcot',array('size'=>12,'maxlength'=>12)); ?>
				</div>
	
				<div class="row">
					<?php echo $form->label($model,'despro'); ?>
					<?php echo $form->textField($model,'despro',array('size'=>25,'maxlength'=>14)); ?>
				</div>

		</div>

		<div class='division_2'>
			<div class="row">
				<?php echo $form->labelEx($model,'codart'); ?>
				<?php
				$this->widget('ext.matchcode1.Seleccionavarios',array(
						'nombrecampo'=>'codart',
						//'ordencampo'=>1,
						'controlador'=>'VwOcompra',
						'relaciones'=>$model->relations(),
						'tamano'=>8,
						'model'=>$model,
						'nombremodelo'=>'Maestrocompo',
						'form'=>$form,
						'nombredialogo'=>'cru-dialog3',
						'nombreframe'=>'cru-frame3',
						//'nombrearea'=>'fehdfj',
					)

				);


				?>
			</div>


					<div class="row">
						<?php echo $form->label($model,'rucpro'); ?>
						<?php echo $form->textField($model,'rucpro',array('size'=>14,'maxlength'=>14)); ?>
					</div>
	
	
					<div class="row">
						<?php echo $form->labelEx($model,'fecdoc'); ?>
		
						<?php //echo $form->labelEx($model,'fecha_nac_ciudadano');  //En este caso fecha_nac_ciudadano es nuestro campo fecha ?>
 								<?php $this->widget('zii.widgets.jui.CJuiDatePicker',
 										array(
												 'model'=>$model,
 												'attribute'=>'fecdoc',
												 'value'=>$model->fecdoc,
 												'language' => 'es',
												 'htmlOptions' => array('readonly'=>"readonly"),
												 'options'=>array(
 												'autoSize'=>true,
 												//'defaultDate'=>$model->d_fecdtra,
 												'dateFormat'=>'yy-mm-dd',
 												'showAnim'=>'fold',
												 'selectOtherMonths'=>true,
 													'showAnim'=>'slide',
 													'showButtonPanel'=>true,
 													'showOn'=>'button',
													 'showOtherMonths'=>true,
													 'changeMonth' => 'true',
 													'changeYear' => 'true',
													 ),
 														)
							);?>
		
					</div>
					<div class="row">
							<?php echo $form->labelEx($model,'fecdoc1'); ?>
		
		
											<?php $this->widget('zii.widgets.jui.CJuiDatePicker',
 														array(
 													'model'=>$model,
 													'attribute'=>'fecdoc1',
 													'value'=>$model->fecdoc1,
													 'language' => 'es',
 														'htmlOptions' => array('readonly'=>"readonly"),
 														'options'=>array(
 														'autoSize'=>true,
														 //'defaultDate'=>$model->d_fectra1,
 															'dateFormat'=>'yy-mm-dd',
															 'showAnim'=>'fold',
 
 															'selectOtherMonths'=>true,
 															'showAnim'=>'slide',
															 'showButtonPanel'=>true,
 																			'showOn'=>'button',
																 'showOtherMonths'=>true,
 																'changeMonth' => 'true',
 																			'changeYear' => 'true',
 																		),
 																		)
											);?>
		
					</div>
					<div style="float: left; ">
			        		<?php //echo $form->labelEx($model,'c_codep'); ?>
							<?php  //$datos = CHtml::listData(Embarcaciones::model()->findAll(array('order'=>'nomep')),'codep','nomep');
							//echo //$form->DropDownList($model,'c_codep',$datos, array('empty'=>'--Seleccione una Embarcacion --')  )
							?>
					</div>
	
	
	
					<div class="row buttons">
								<?php echo CHtml::submitButton('Buscar'); ?>
					</div>


		</div>
			<?php $this->endWidget(); ?>

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
		'width'=>700,
		'height'=>500,
	),
));
?>
<iframe id="cru-frame3" width="100%" height="100%"></iframe>
<?php

$this->endWidget();
//--------------------- end new code --------------------------
?>

