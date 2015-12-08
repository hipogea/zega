<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$baseUrl = Yii::app()->theme->baseUrl; 
?>

<?php
if(!Yii::app()->user->isGuest)
if(!(Yii::app()->user->um->getFieldValue(Yii::app()->user->id,'externo')=='1')){


?>


<?php /*
$gridDataProvider = new CArrayDataProvider(array(
    array('id'=>1, 'firstName'=>'Mark', 'lastName'=>'Otto', 'language'=>'CSS','usage'=>'<span class="inlinebar">1,3,4,5,3,5</span>'),
    array('id'=>2, 'firstName'=>'Jacob', 'lastName'=>'Thornton', 'language'=>'JavaScript','usage'=>'<span class="inlinebar">1,3,16,5,12,5</span>'),
    array('id'=>3, 'firstName'=>'Stu', 'lastName'=>'Dent', 'language'=>'HTML','usage'=>'<span class="inlinebar">1,4,4,7,5,9,10</span>'),
	array('id'=>4, 'firstName'=>'Jacob', 'lastName'=>'Thornton', 'language'=>'JavaScript','usage'=>'<span class="inlinebar">1,3,16,5,12,5</span>'),
    array('id'=>5, 'firstName'=>'Stu', 'lastName'=>'Dent', 'language'=>'HTML','usage'=>'<span class="inlinebar">1,3,4,5,3,5</span>'),
));*/
?>
<!--
<div class="row-fluid">
  <div class="span3 ">
	<div class="stat-block">
	  <ul>
		<li class="stat-graph inlinebar" id="weekly-visit">8,4,6,5,9,10</li>
		<li class="stat-count"><span>$23,000</span><span>Weekly Sales</span></li>
		<li class="stat-percent"><span class="text-success stat-percent">20%</span></li>
	  </ul>
	</div>
  </div>
  <div class="span3 ">
	<div class="stat-block">
	  <ul>
		<li class="stat-graph inlinebar" id="new-visits">2,4,9,1,5,7,6</li>
		<li class="stat-count"><span>$123,780</span><span>Monthly Sales</span></li>
		<li class="stat-percent"><span class="text-error stat-percent">-15%</span></li>
	  </ul>
	</div>
  </div>
  <div class="span3 ">
	<div class="stat-block">
	  <ul>
		<li class="stat-graph inlinebar" id="unique-visits">200,300,500,200,300,500,1000</li>
		<li class="stat-count"><span>$12,456</span><span>Open Invoices</span></li>
		<li class="stat-percent"><span class="text-success stat-percent">10%</span></li>
	  </ul>
	</div>
  </div>
  <div class="span3 ">
	<div class="stat-block">
	  <ul>
		<li class="stat-graph inlinebar" id="">1000,3000,6000,8000,3000,8000,10000</li>
		<li class="stat-count"><span>$25,000</span><span>Overdue</span></li>
		<li class="stat-percent"><span><span class="text-success stat-percent">20%</span></li>
	  </ul>
	</div>
  </div>
</div>
!-->
 <div style="display: table; width:100%;">
     <div style="display:table-cell;width:200px;">
            <?php
        $this->beginWidget('zii.widgets.CPortlet', array(
            'title'=>'<span class="icon-picture"></span>Panel de administracion',
            'titleCssClass'=>''
        ));
        ?>
        <div class="summary">
          <ul>

            <li>
                <span class="summary-icon2">
                    <img src="<?php echo $baseUrl ;?>/img/Explain.png" width="25" height="25" alt="Datos maestros">
                </span>
                
                <span class="summary-title"> <?php echo CHtml::link("Datos maestros",Yii::app()->baseUrl."/site/maestros");  ?></span>
            </li>
            <li>
                <span class="summary-icon2">
                    <img src="<?php echo $baseUrl ;?>/img/cog.png" width="20" height="20" alt="Datos maestros">
                </span>
                
                <span class="summary-title"> <?php echo CHtml::link("Configuracion",Yii::app()->baseUrl."/configuracion");  ?></span>
            </li>
            <li>
                <span class="summary-icon2">
                    <img src="<?php echo $baseUrl ;?>/img/lock.png" width="25" height="25" alt="Datos maestros">
                </span>
                
                <span class="summary-title"> <?php echo CHtml::link("Seguridad",Yii::app()->user->ui->userManagementAdminUrl);  ?></span>
            </li>
            <li>
                <span class="summary-icon2">
                    <img src="<?php echo $baseUrl ;?>/img/Cluster.png" width="20" height="20" alt="Datos maestros">
                </span>
                
                <span class="summary-title"> <?php echo CHtml::link("Base de datos",Yii::app()->baseUrl."/backup");  ?></span>
            </li>
             <li>
                <span class="summary-icon2">
                    <img src="<?php echo $baseUrl ;?>/img/check.png" width="20" height="20" alt="Datos maestros">
                </span>
                
                <span class="summary-title"> <?php echo CHtml::link("liberaciones","");  ?></span>
            </li>
            
            <!--
            <li>
                <span class="summary-icon">
                    <img src="</img/folder_page.png" width="36" height="36" alt="Recent Conversions">
                </span>
                <span class="summary-number">630</span>
                <span class="summary-title"> Recent Conversions</span>

            </li>
             !-->
        
          </ul>
        </div>
             <?php $this->endWidget(); ?>
      </div>

     <div style="display:table-cell">


      <?php
		$this->beginWidget('zii.widgets.CPortlet', array(
			'title'=>'<span class="icon-picture"></span>Tablon publico',
			'titleCssClass'=>''
		));
		?>
        
        <!-- 
         <div class="auto-update-chart" style="height: 250px;width:100%;margin-top:15px; margin-bottom:15px;"></div> 
        !-->
         <?php MiFactoria::InsertaCumple();   ?>
        <?php $this->widget('zii.widgets.grid.CGridView', array(
                                         'id'=>'noticias-grid',
                                                'dataProvider'=>Noticias::model()->searchtablon(),
                                                    'summaryText'=>'',
                                                     'itemsCssClass'=>'table table-striped table-bordered table-hover', 
                                                        'hideHeader'=>true,
                                                        //'filter'=>$model,
                                                        'columns'=>array(
                                                              //'id',
                                                             array('name'=>'st.','header'=>'st', 'type'=>'html',
                                                                 'value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."noti".$data->tiponoticia.".png","",array("width"=>15,"height"=>15))',
                                                                 'htmlOptions'=>array('width'=>30)
                                                                 ),
                                                            array('name'=>'dst.','header'=>'dst', 'type'=>'html','value'=>'CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"]."user_business.png","",array("width"=>15,"height"=>15))',
                                                                'htmlOptions'=>array('width'=>30)
                                                            ),

                                                            'autor',
                                                            array('name'=>'txtnoticia','type'=>'html','value'=>'CHTml::openTag("span",array("style"=>"font-size:11px;")).$data->txtnoticia.CHTml::closeTag("span")'),
                                                           // 'fecha',
                                                            array('name'=>'fec','value'=>'MiFactoria::tiempopasado($data->fecha)','htmlOptions'=>array('width'=>100)),


                                                            //'expira',
                                                             //'tiponoticia',
        
    
                                                                     ),
                                                                        )); ?>
        <?php
        echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"].'sound.png');
        echo CHtml::link("     Solicitar publicacion ",Yii::app()->baseUrl."/noticias/solicita");
        http://www.neologys.com/recurso/noticias/adminusuariopendientes.jsp
        echo "  ----    ";
        echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"].'Records.png');
        echo CHtml::link(" Ver mis solicitudes ",Yii::app()->baseUrl."/noticias/adminusuariopendientes");
        echo "  ----  ";
        echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params["rutatemaimagenes"].'Processes.png');

        echo CHtml::link(" Configurar   ",Yii::app()->baseUrl."/noticias/configura");


        ?>

        <?php $this->endWidget(); ?>

     </div>


     </div>



<!--
<div class="row-fluid">
	<div class="span6">
	  <?php  /*$this->widget('zii.widgets.grid.CGridView', array(
			
			'htmlOptions'=>array('class'=>'table table-striped table-bordered table-condensed'),
			'dataProvider'=>$gridDataProvider,
			'template'=>"{items}",
			'columns'=>array(
				array('name'=>'id', 'header'=>'#'),
				array('name'=>'firstName', 'header'=>'First name'),
				array('name'=>'lastName', 'header'=>'Last name'),
				array('name'=>'language', 'header'=>'Language'),
				array('name'=>'usage', 'header'=>'Usage', 'type'=>'raw'),
				
			),
		)); */?>
	</div>
	<div class="span6">
		 <?php /*$this->widget('zii.widgets.grid.CGridView', array(
			
			'htmlOptions'=>array('class'=>'table table-striped table-bordered table-condensed'),
			'dataProvider'=>$gridDataProvider,
			'template'=>"{items}",
			'columns'=>array(
				array('name'=>'id', 'header'=>'#'),
				array('name'=>'firstName', 'header'=>'First name'),
				array('name'=>'lastName', 'header'=>'Last name'),
				array('name'=>'language', 'header'=>'Language'),
				array('name'=>'usage', 'header'=>'Usage', 'type'=>'raw'),
				
			),
		)); */?>
        	
	</div>
</div>
!-->
<div style="display: table; width:100%;">
    <div style="display:table-cell;width:50%;">

	  <?php
		$this->beginWidget('zii.widgets.CPortlet', array(
			'title'=>'<span class="icon-th-large"></span>Gastos diario del mes',
			'titleCssClass'=>''
		));
		?>
        <div class="visitors-chart" style="height: 230px;width:100%;margin-top:15px; margin-bottom:15px;">


        </div>

        
        <?php $this->endWidget(); ?>

    </div>
    <div style="display:table-cell;width:50%;">
    	<?php
		$this->beginWidget('zii.widgets.CPortlet', array(
			'title'=>'<span class="icon-th-list"></span> Avance de Obra-Contrato 3',
			'titleCssClass'=>''
		));
		?>
        
        <div class="pieStats" style="height: 230px;width:100%;margin-top:15px; margin-bottom:15px;"></div>
        
        <?php $this->endWidget(); ?>
    </div>


</div>



          


<script>
            $(function() {

                $(".knob").knob({
                    /*change : function (value) {
                        //console.log("change : " + value);
                    },
                    release : function (value) {
                        console.log("release : " + value);
                    },
                    cancel : function () {
                        console.log("cancel : " + this.value);
                    },*/
                    draw : function () {

                        // "tron" case
                        if(this.$.data('skin') == 'tron') {

                            var a = this.angle(this.cv)  // Angle
                                , sa = this.startAngle          // Previous start angle
                                , sat = this.startAngle         // Start angle
                                , ea                            // Previous end angle
                                , eat = sat + a                 // End angle
                                , r = 1;

                            this.g.lineWidth = this.lineWidth;

                            this.o.cursor
                                && (sat = eat - 0.3)
                                && (eat = eat + 0.3);

                            if (this.o.displayPrevious) {
                                ea = this.startAngle + this.angle(this.v);
                                this.o.cursor
                                    && (sa = ea - 0.3)
                                    && (ea = ea + 0.3);
                                this.g.beginPath();
                                this.g.strokeStyle = this.pColor;
                                this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false);
                                this.g.stroke();
                            }

                            this.g.beginPath();
                            this.g.strokeStyle = r ? this.o.fgColor : this.fgColor ;
                            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false);
                            this.g.stroke();

                            this.g.lineWidth = 2;
                            this.g.beginPath();
                            this.g.strokeStyle = this.o.fgColor;
                            this.g.arc( this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                            this.g.stroke();

                            return false;
                        }
                    }
                });

                // Example of infinite knob, iPod click wheel
                var v, up=0,down=0,i=0
                    ,$idir = $("div.idir")
                    ,$ival = $("div.ival")
                    ,incr = function() { i++; $idir.show().html("+").fadeOut(); $ival.html(i); }
                    ,decr = function() { i--; $idir.show().html("-").fadeOut(); $ival.html(i); };
                $("input.infinite").knob(
                                    {
                                    min : 0
                                    , max : 20
                                    , stopper : false
                                    , change : function () {
                                                    if(v > this.cv){
                                                        if(up){
                                                            decr();
                                                            up=0;
                                                        }else{up=1;down=0;}
                                                    } else {
                                                        if(v < this.cv){
                                                            if(down){
                                                                incr();
                                                                down=0;
                                                            }else{down=1;up=0;}
                                                        }
                                                    }
                                                    v = this.cv;
                                                }
                                    });
            });
        </script>


    <?php
}  else   {  // EN CAOS QUE SE AUN PEOVEEDOR

        ?>


<?php
echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'fondoprov.png',"Helius"); ?></a>



<?php
}

?>
