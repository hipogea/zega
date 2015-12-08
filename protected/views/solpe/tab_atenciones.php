<?php
    foreach($modelodetalle->desolpe_alreserva as $row) {
        if($row->codocu=='450')  //si e suna domcuento de reserva
            $idreserva=$row->id;
    }

    ?>
<?php $prove=VwAtencionessolpe::model()->search_por_reserva($idreserva);?>
<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'reservas-grid',
'itemsCssClass'=>'table table-striped table-bordered table-hover',

    'dataProvider'=>$prove,
    //'filter'=>$model,
    'summaryText'=>'',
    'columns'=>array(

        array('name'=>'numvale','header'=>'Vale'),
        //'alinventario_ums.desum',
        //array('name'=>'codart','type'=>'raw','value'=>'CHtml::image("/recurso/materiales/".$data->codart.".JPG","HOLA",array("height"=>60,"width"=>"60"))'),
        'fecha',
        'movimiento',
        'desumsolpe',
        'desumkardex',
        'ceco',
        array('name'=>'ceco','value'=>'$data->ceco','footer'=>'Total'),
        array('name'=>'monto','value'=>'round($data->monto,2)','footer'=>round(VwAtencionessolpe::getTotal($prove),2)),
        'cant',
        'usuario',


    ),
)); ?>




