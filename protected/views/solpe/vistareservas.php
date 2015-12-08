
<?PHP
echo Chtml::image(Yii::app()->getTheme()->baseUrl.'/img/user_business.png','hola', array('height'=>15,'width'=>15));
?>
<h1>Este Item</h1>
<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'reservas-grid',
     'itemsCssClass'=>'table table-striped table-bordered table-hover',
   // 'cssFile'=>Yii::app()->getTheme()->baseUrl.'/css/style-grid.css',
    'dataProvider'=>VwAlreservas::model()->search_por_iddesolpe($modelodetalle->id),
    //'filter'=>$model,
    'summaryText'=>'',
    'columns'=>array(
        array('name'=>'.', 'type'=>'html','value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."cajita.png","",array())'),
        array('name'=>'id', 'header'=>'Reserva','value'=>'$data->id'),
        array('name'=>'desdocu', 'header'=>'Documento','value'=>'$data->desdocu'),
        array('name'=>'numero', 'header'=>'Solicitud','value'=>'$data->numero'),
        'item',
        'codart',
        //'alinventario_ums.desum',
        //array('name'=>'codart','type'=>'raw','value'=>'CHtml::image("/recurso/materiales/".$data->codart.".JPG","HOLA",array("height"=>60,"width"=>"60"))'),
        'desum',
        'cant',
        'fechares',
        'usuario',


    ),
)); ?>


<?PHP
echo "<br>";
?>

<?PHP
echo Chtml::image(Yii::app()->getTheme()->baseUrl.'/img/usuarios.png','hola', array('height'=>25,'width'=>25));
?>
<h1>Otras reservas para este material</h1>


        <?php /*$this->widget('zii.widgets.grid.CGridView', array(
            'id'=>'reservas-grid',
           'itemsCssClass'=>'table table-striped table-bordered table-hover',
            //'cssFile'=>Yii::app()->getTheme()->baseUrl.'/css/style-grid.css',
            'dataProvider'=>VwAlreservas::model()->search_por_otros($modelodetalle->id,$codigo),
            //'filter'=>$model,
            'summaryText'=>'',
            'columns'=>array(
                array('name'=>'.', 'type'=>'html','value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."cajita.png","",array())'),
                array('name'=>'id', 'header'=>'Reserva','value'=>'$data->id'),
                array('name'=>'desdocu', 'header'=>'Documento','value'=>'$data->desdocu'),
                array('name'=>'numero', 'header'=>'Solicitud','value'=>'$data->numero'),
                'item',
                'codart',
                //'alinventario_ums.desum',
                //array('name'=>'codart','type'=>'raw','value'=>'CHtml::image("/recurso/materiales/".$data->codart.".JPG","HOLA",array("height"=>60,"width"=>"60"))'),
                'desum',
                'cant',
                'fechares',
                'usuario',


            ),
        ));*/ ?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
            'id'=>'reservas-gridx',
           'itemsCssClass'=>'table table-striped table-bordered table-hover',
            //'cssFile'=>Yii::app()->getTheme()->baseUrl.'/css/style-grid.css',
            'dataProvider'=>VwReservasPendientes::model()->search_por_idesolpe($modelodetalle->id,$codigo),
            //'filter'=>$model,
            'summaryText'=>'',
            'columns'=>array(
                array('name'=>'.', 'type'=>'html','value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."cajita.png","",array())'),
                array('name'=>'idreserva', 'header'=>'Reserva','value'=>'$data->idreserva'),
                array('name'=>'desdocu_reserva', 'header'=>'Documento','value'=>'$data->desdocu_reserva'),
                array('name'=>'numero', 'header'=>'Solicitud','value'=>'$data->numero'),
                'item',
                'codart',
                //'alinventario_ums.desum',
                //array('name'=>'codart','type'=>'raw','value'=>'CHtml::image("/recurso/materiales/".$data->codart.".JPG","HOLA",array("height"=>60,"width"=>"60"))'),
                'desum',
                'cantidad_pendiente',
                'fecha_reserva',
                'usuario_reserva',


            ),
        )); ?>






