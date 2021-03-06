<?php
$prove=Dcajachica::model()->search_por_cargo_a_rendir($idcabecera,$idparent);
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'detalle-grid',
	'dataProvider'=>$prove,
	//'filter'=>$model,
	'itemsCssClass'=>'table table-striped table-bordered table-hover',

	'summaryText'=>'->',
	'columns'=>array(
			

			array(
           'class'=>'CCheckBoxColumn',
		    'selectableRows' => 20,
		    'value'=>'$data->id',
			'checkBoxHtmlOptions' => array(                
				'name' => 'cajita[]',
				//'enabled'=>'(($data->coddocu=="001") and ($data->codpro <> "R00001"))?"false":"true"',
                 //'disabled'=>'true',

		   ),
           // 'id'=>'cajita' // the columnID for getChecked
       ),

		//array('name'=>'item', 'htmlOptions'=>array('width'=>1)),
			//array('name'=>'fecha','header'=>'fecha','htmlOptions'=>array('width'=>5)),
		array(
			'name'=>'fecha',
			//array('name'=>'fechaent','header'=>'Para'),
			'header'=>'Fecha',
			'value'=>'date("d.m.Y", strtotime($data->fecha))',
			'htmlOptions'=>array('width'=>50),
		),
		array('name'=>'tipoflujo','header'=>'Tipo','value'=>'$data->flujos->destipo','htmlOptions'=>array('width'=>140)),
		array('name'=>'st.','header'=>'st', 'type'=>'raw','value'=>'($data->tipoflujo=="102")?CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."rojo.png"):""'),

		array('name'=>'glosa','header'=>'Glosa','htmlOptions'=>array('width'=>205)),
		array('name'=>'codocu','header'=>'Documento','value'=>'$data->documentos->desdocu','htmlOptions'=>array('width'=>200)),
		array('name'=>'referencia','header'=>'Ref.','htmlOptions'=>array('width'=>205)),
		array('name'=>'debe','header'=>'Cargo','htmlOptions'=>array('width'=>5)),
		array('name'=>'monedahaber','header'=>'Mon','htmlOptions'=>array('width'=>5)),
		array('name'=>'monto','header'=>'Monto','type'=>'raw','value'=>'CHTml::openTag("span",array("style"=>"color:#ff6600;float:right;font-weight:bold;")).MiFactoria::Decimal($data->monto).CHTml::closeTag("span")','footer'=>MiFactoria::Decimal((Dcajachica::getMonto($prove,2))),'htmlOptions'=>array('width'=>5)),

		//array('name'=>'codtra','header'=>'Responsable','value'=>'$data->trabajadores->ap."-".$data->trabajadores->am."-".$data->trabajadores->nombres','htmlOptions'=>array('width'=>405)),
		array('name'=>'Ceco','header'=>'Cc','type'=>'raw','value'=>'$data->ceco','htmlOptions'=>array('width'=>80),'footer'=>CHTml::openTag("span",array("style"=>"color:#ff6600;float:right;font-weight:bold;")).MiFactoria::decimal($model->debe-Dcajachica::getMonto($prove,2)).CHTml::closeTag("span")),
		//array('name'=>'Imput','header'=>'Imput','value'=>'$data->cco->desceco','htmlOptions'=>array('width'=>140)),
		array('name'=>'estado','header'=>'Estado','value'=>'$data->estado->estado','htmlOptions'=>array('width'=>100)),



		//array('name'=>'saldo','header'=>'Plan','value'=>'round($data->punitplan,2)','footer'=>round(Desolpe::getTotal($prove)['plan'],2)),
		//array('name'=>'punitreal','header'=>'Real','value'=>'round($data->alkardex_gastos,2)','footer'=>round(Desolpe::getTotal($prove)['real'],2)),


		array(
			'htmlOptions'=>array('width'=>120),
			'class'=>'CButtonColumn',
			 'buttons'=>array(
			 
                        'update'=>
                            array(
                            	   'visible'=>'true',
                                    'url'=>'$this->grid->controller->createUrl("trabajadores/actualizadetalle/",
										    array("id"=>$data->id,
                                                                                         "asDialog"=>1,
											"gridId"=>$this->grid->id,
											"ed"=>"si",

											)
									    )',
                                    'click'=>('function(){
                                     $("#cru-dialog2").dialog("open");
							    		$("#cru-frame2").attr("src",$(this).attr("href"));
							     return false;
							 }'),
								'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'lapicito.png',
								'label'=>'Actualizar Item', 
                                ),


								'delete'=>

                             array(
                             	    'visible'=>'true',
                                    'url'=>'',
						    'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'hand_point.png',
								'label'=>'Ver detalle',
                                ),	
							

                            


                               'view'=>
                            array(
                                'visible'=>'true',
                                'url'=>'',
								'imageUrl'=>''.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'borrador.png',
								'label'=>'Reservar', 
                                ),

                            ),
		),
	),
)); ?>