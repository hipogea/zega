<?php
$logh= is_array(Yii::app()->user->loginUrl)?Yii::app()->user->loginUrl[0]:Yii::app()->user->loginUrl;
 if(!stripos(Yii::app()->request->getUrl() ,$logh)!==false)
 {
if(!Yii::app()->user->isGuest){
    if(!(Yii::app()->user->um->getFieldValue(Yii::app()->user->id,'externo')=='1')){
        ?>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
   <a class="brand" href=<?php echo yii::app()->getBaseUrl(true); ?> ><?php echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'helius.png',"Helius",array("width"=>30,"height"=>30)); ?></a>
                              <div class="nav-collapse">

                        <div id="myslidemenu" class="barrademenu">

                        <?php $this->widget('application.extensions.emenu.EMenu',array(
                        // $this->widget('zii.widgets.CMenu',array(
                           // 'htmlOptions'=>array('class'=>'pull-right nav'),
                            'theme'=>'flickr', //adobe, mtv, lwis,flickr,nvidia,vimeo
                         // 'submenuHtmlOptions'=>array('class'=>'dropdown-menu'),   // esta opcion malogar la lista despelagable desactivarla
                            /*'itemCssClass'=>'item-test',*/
                            'encodeLabel'=>false,
                            'items'=>array(

                                array('label'=>' Catálogos', 'url'=>'#',

                                    'items'=>array(
                                        array('label'=>'Layout', 'url'=>'/recurso/site/maestros'),
                                        array('label'=>'<img src="'.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'orga.png" /> Corporativos', 'url'=>'#',

                                            'items'=>array(
                                                array('label'=>'Sociedades', 'url'=>'/recurso/sociedades/admin'),
                                                array('label'=>'Centros', 'url'=>'/recurso/centros/admin'),
                                                array('label'=>'Areas', 'url'=>'/recurso/centros/areas'),
                                                array('label'=>'Acreedores', 'url'=>'/recurso/clipro/admin'),
                                            ),
                                        ),
                                        array('label'=>'Logistica', 'url'=>'#',
                                            'items'=>array(
                                                array('label'=>'<img src="'.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'logi.png" />Almacen', 'url'=>'#',
                                                    'items'=>array(
                                                        array('label'=>'Almacenes', 'url'=>'/recurso/almacenes/admin'),
                                                        array('label'=>'Transacciones', 'url'=>'/recurso/almacenmovimientos/admin'),
                                                        array('label'=>'Canales de despacho', 'url'=>'/recurso/canales/admin'),
                                                        array('label'=>'Acreedores', 'url'=>'/recurso/clipro/admin'),
                                                        array('label'=>'Objetos externos', 'url'=>'/recurso/objetoscliente/admin'),
                                                             ),
                                                ),
                                                 array('label'=>'<img src="'.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'car.png" /> Transporte', 'url'=>'#',
                                                     'items'=>array(
                                                         array('label'=>'Vehiculos', 'url'=>'/recurso/embarcaciones/admin'),
                                                         array('label'=>'Ptos Transporte', 'url'=>'/recurso/direcciones/admin'),
                                                         array('label'=>'Lugares', 'url'=>'/recurso/lugares/admin'),
                                                         array('label'=>'Tipos mov', 'url'=>'/recurso/paraqueva/admin'),
                                                         array('label'=>'Motivos traslado', 'url'=>'/recurso/Motivo/admin'),
                                                     ),

                                                     ),

                                            ),
                                        ),
                                        array('label'=>'Analisis y costeo', 'url'=>'#',
                                            'items'=>array(

                                                array('label'=>'Colectores', 'url'=>'#',
                                                    'items'=>array(
                                                        array('label'=>'Grupos', 'url'=>'/recurso/grupocc/admin'),
                                                        array('label'=>'Colectores', 'url'=>'/recurso/cc/admin'),
                                                        array('label'=>'Crear Colector', 'url'=>'/recurso/cc/create'),
                                                    ),
                                                ),
                                                    array('label'=>'Impuestos', 'url'=>'#',
                                                         'items'=>array(
                                                                            array('label'=>'Definir impuestos', 'url'=>'/recurso/impuestos/admin'),
                                                                            array('label'=>'Valorizacion de impuestos', 'url'=>'/recurso/valorimpuestos/admin'),
                                                                             array('label'=>'Asignar Impuestos', 'url'=>'/recurso/impuestosdocu/admin'),
                                                                    ),
                                                                ),
                                                         array('label'=>'Tipo cambio', 'url'=>'/recurso/TMoneda/Cambio'),
                                                array('label'=>'Formas de pago', 'url'=>'/recurso/Tipofacturacion/admin'),
                                                  ),
                                             ),
                                        array('label'=>'Comerciales', 'url'=>'#',
                                            'items'=>array(
                                                array('label'=>'Contactos', 'url'=>'/recurso/Contactos/admin'),
                                                array('label'=>'Disponibilidad', 'url'=>'/recurso/Disponibilidad/admin'),
                                                array('label'=>'Grupo ventas', 'url'=>'/recurso/Grupoventas/admin'),
                                            ),
                                        ),
                                        array('label'=>'Documentos', 'url'=>'/recurso/Documentos/admin'),
                                        array('label'=>'Servicios', 'url'=>'#',
                                            'items'=>array(
                                                array('label'=>'Crear servicio', 'url'=>'/recurso/maestroservicios/create'),
                                                array('label'=>'Servicios', 'url'=>'/recurso/maestroservicios/admin'),
                                                ),
                                        ),
                                        array('label'=>'Estados', 'url'=>'/recurso/Estado/admin'),
                                        array('label'=>'Eventos', 'url'=>'/recurso/Eventos/admin'),
                                        array('label'=>'Grupo compras', 'url'=>'/recurso/Grupocompras/admin'),
                                        array('label'=>'Objetos tecnicos', 'url'=>'#',
                                            'items'=>array(
                                                array('label'=>'Crear Material', 'url'=>'/recurso/maestrocompo/create'),
                                                array('label'=>'Tipos mater.', 'url'=>'/recurso/maestrotipos/admin'),
                                                array('label'=>'Materiales', 'url'=>'/recurso/maestrocompo/admin'),
                                                array('label'=>'Tipos AF', 'url'=>'/recurso/Tipoactivos/admin'),
                                                array('label'=>'Unidades med', 'url'=>'/recurso/ums/admin'),
                                                array('label'=>'Catalogo equipos', 'url'=>'/recurso/masterequipo/admin'),
                                                array('label'=>'Lista de materiales', 'url'=>'/recurso/listamateriales/admin')
                                            ),
                                        ),
                                        array('label'=>'<img src="'.Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'user_business.png" /> Trabajadores', 'url'=>'/recurso/Trabajadores/admin',),
                                           // array('label'=>'Trabajadores', 'url'=>'/recurso/Trabajadores/admin'),
                                        array('label'=>'Cargos', 'url'=>'/recurso/Oficios/admin'),
                                        array('label'=>'Periodos', 'url'=>'/recurso/Periodos/admin'),
                                        array('label'=>'Monedas', 'url'=>'/recurso/TMoneda/admin'),
                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                                array('label'=>'Operaciones ', 'url'=>'#', //'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(
                                           array('label'=>'Solicitudes ', 'url'=>'#',
                                               'items'=> array(
                                                   array('label'=>'Crear Solicitud', 'url'=>'/recurso/solpe/create'),
                                                   array('label'=>'Solicitudes', 'url'=>'/recurso/solpe/admin'),
                                                                )
                                                  ),
                                            array('label'=>'Compras ', 'url'=>'#',
                                                'items'=> array(
                                                array('label'=>'Tomar Solicitudes', 'url'=>'/recurso/solpe/tomarcompras'),
                                                array('label'=>'Crear Sol Cotizac', 'url'=>'/recurso/solcot/create'),
                                                array('label'=>'Solicitudes Cotizac', 'url'=>'/recurso/solcot/admin'),
                                                array('label'=>'Crear Orden compra', 'url'=>'/recurso/ocompra/creaDocumento'),
                                                array('label'=>'Ordenes de  compra', 'url'=>'/recurso/ocompra/admin'),
                                                array('label'=>'Servicios', 'url'=>'#',
                                                    'items'=>array(
                                                        array('label'=>'Crear servicio', 'url'=>'/recurso/maestroservicios/create'),
                                                        array('label'=>'Dar conformidad', 'url'=>'/recurso/maestroservicios/creaconformidad'),
                                                        array('label'=>'Servicios', 'url'=>'/recurso/maestroservicios/admin'),
                                                        array('label'=>'Visualizar Conformidades', 'url'=>'/maestroservicios/listado'),
                                                    ),
                                                ),

                                            ),


                                            ),

                                            ),
                                        array('label'=>'Servicios', 'url'=>'#',
                                            'items'=>array(
                                            array('label'=>'Crear Oferta', 'url'=>'/recurso/peticion/create'),
                                            array('label'=>'Ofertas', 'url'=>'/recurso/peticion/admin'),
                                            array('label'=>'Ordenes de trabajo', 'url'=>'#',
                                                'items'=>array(
                                                    array('label'=>'Crear orden', 'url'=>'/recurso/ot/create'),
                                                    array('label'=>'Ordenes trabajo', 'url'=>'/recurso/ot/admin'),

                                                ),
                                                 ) ),
                                        'Aprobaciones'=>array(
                                            array('label'=>'Solicitudes', 'url'=>'/recurso/solpe/liberacion'),

                                        ),
                                    ),


                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                               array('label'=>'Administracion ', 'url'=>'#',//'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(
                                        array('label'=>'Novedades', 'url'=>'/recurso/noticias/admin'),
                                        array('label'=>'Aprobar avisos', 'url'=>'/recurso/noticias/poraprobar'),
                                        array('label'=>'Tipo cambio', 'url'=>'/recurso/tipocambio/admin'),
                                        array('label'=>'Contactos', 'url'=>'/recurso/clipro/agenda'),
                                        array('label'=>'Trabajadores', 'url'=>'/recurso/trabajadores/admin'),
                                        array('label'=>'Proveedores', 'url'=>'/recurso/clipro/admin'),
                                        array('label'=>'Recepcion doc.', 'url'=>'/recurso/docingresados/admin'),
                                        array('label'=>'Caja menor.', 'url'=>'/recurso/cajachica/admin'),
                                        array('label'=>'Vehiculos', 'url'=>'/recurso/Embarcaciones/admin'),
                                        array('label'=>'Periodos', 'url'=>'/recurso/Periodos/admin'),
                                        array('label'=>'Solicitar noticia', 'url'=>'/recurso/noticias/solicita'),
                                        array('label'=>'Biblioteca', 'url'=>'/recurso/archivador/admin'),
                                        array('label'=>'Recep Facturas', 'url'=>'/recurso/ingfactura/admin'),
                                        array('label'=>'Costos', 'url'=>'/recurso/cc/reporte'),
                                        array('label'=>'Registro Costos', 'url'=>'/recurso/ccGastos/admin'),
                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                                array('label'=>'Almacen ', 'url'=>'#',//'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(
                                        array('label'=>'Resumen general', 'url'=>'/recurso/almacendocs/almacenes'),
                                        array('label'=>'Crear movimiento', 'url'=>'/recurso/almacendocs/crearvale'),
                                        array('label'=>'Documentos Almacen', 'url'=>'/recurso/almacendocs/admin'),
                                        array('label'=>'Crear documento', 'url'=>'/recurso/almacendocs/crear'),
                                        array('label'=>'Ajustes de inventario', 'url'=>'/recurso/almacendocs/ajuste'),
                                        array('label'=>'Supervisar Stock', 'url'=>'/recurso/alinventario/supervision'),
                                        array('label'=>'Doc material', 'url'=>'/recurso/alkardex/admin'),
                                        array('label'=>'Existencias', 'url'=>'/recurso/alinventario/admin'),
                                        array('label'=>'Despachos', 'url'=>'/recurso/despacho/admin'),
                                        array('label'=>'Centros-Materiales', 'url'=>'/recurso/alinventario/cargarmat'),
                                        array('label'=>'Ajuste de solicitudes', 'url'=>'/recurso/solpe/atiendesolpe'),
                                        array('label'=>'Reportes de inventario', 'url'=>'/recurso/alinventario/repinventario'),
                                        array('label'=>'Importar Inventario', 'url'=>'/recurso/alinventario/import'),
                                        array('label'=>'Analisis ABC', 'url'=>'/recurso/alinventario/pareto'),
                                        array('label'=>'Reporte ABC', 'url'=>'/recurso/alinventario/adminpareto'),
                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                                array('label'=>'Aplicacion', 'url'=>'#',//'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(

                                        array('label'=>'Configuracion', 'url'=>'#',
                                                'items'=>array(


                                                         // array('label'=>'Toolbar', 'url'=>'/recurso/opcionesbarra/admin'),
                                                          array('label'=>'Parametros Generales', 'url'=>'/recurso/configuracion'),
                                                          array('label'=>'Maestros Base', 'url'=>'/recurso/site/config'),
                                                          array('label'=>'Valores defecto', 'url'=>'/recurso/opcionescamposdocu/admin'),
                                                          array('label'=>'Reportes', 'url'=>'#',
                                                              'items'=>array(
                                                              array('label'=>'Administrar ', 'url'=>'/recurso/coordocs/admin'),
                                                              array('label'=>'Tenores ', 'url'=>'/recurso/tenores/admin'),
                                                              ),
                                                          ),
                                                ),
                                        ),
                                        array('label'=>'Seguridad', 'url'=>'#',
                                            'items'=>array(
                                                array('label'=>'Gestion Usuarios', 'url'=>'/recurso/cruge/ui/usermanagementadmin'),
                                                array('label'=>'Definir perfiles', 'url'=>'/recurso/cruge/ui/rbaclisttasks'),
                                                array('label'=>'Definir Roles', 'url'=>'/recurso/cruge/ui/rbaclistroles'),
                                                    array('label'=>'Gestion de Acceso', 'url'=>' /recurso/cruge/ui/systemupdate'),
                                                    array('label'=>'Permisologia', 'url'=>'/recurso/cruge/ui/rbacusersassignments'),
                                                array('label'=>'Reglas Negocio', 'url'=>'/recurso/Authobjetos/admin'),
                                                array('label'=>'Backup', 'url'=>'/recurso/backup'),
                                            ),
                                        ),
                                        array('label'=>'Importacion de datos', 'url'=>'/recurso/cargamasiva/admin' ),
                                        array('label'=>'Ediciones de usuario', 'url'=>'/recurso/site/bloqueos' ),

                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                                  array('label'=>'Transporte ', 'url'=>'#','itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(

                                        array('label'=>'Crear Doc Transp', 'url'=>'/recurso/guia/creaDocumento'),
                                        array('label'=>'Crear Doc Recep', 'url'=>'/recurso/ne/create'),
                                        array('label'=>'Documentos', 'url'=>'/recurso/guia/admin'),
                                        array('label'=>'Crear Conductores', 'url'=>'/recurso/choferes/create'),
                                        array('label'=>'Crear Direccion', 'url'=>'/recurso/direcciones/create'),
                                        array('label'=>'Crear Ubicaciones', 'url'=>'/recurso/lugares/create'),
                                        array('label'=>'Canales de distr', 'url'=>'/recurso/canales/admin'),
                                        array('label'=>'Centro expedicion', 'url'=>'/recurso/puntodespacho/admin'),
                                        array('label'=>'Expedicion', 'url'=>'/recurso/despacho/admin'),
                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),
                                array('label'=>'G. Activos ', 'url'=>'#','itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(

                                        array('label'=>'Inventario AF', 'url'=>'/recurso/Inventario/admin'),
                                        array('label'=>'Crear AF', 'url'=>'/recurso/Inventario/create'),
                                        array('label'=>'Observaciones', 'url'=>'/recurso/Observaciones/admin'),
                                        array('label'=>'Crear AF', 'url'=>'/recurso/Inventario/create'),
                                        array('label'=>'Tipos AF', 'url'=>'/recurso/tipoactivos/create'),


                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),


                                array('label'=>'Login', 'url'=>Yii::app()->user->ui->loginUrl  , 'visible'=>Yii::app()->user->isGuest),
                                array('label'=>'Salir ('.Yii::app()->user->name.')', 'url'=>Yii::app()->user->ui->logoutUrl , 'visible'=>!Yii::app()->user->isGuest),


                        )));   ?>

                            <br style="clear: left" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <?php
    }  else   {      ?>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container"> <!-- Be sure to leave the brand out there if you want it shown -->
                    <a class="brand" href="#"><?php //echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'helius.png',"Helius",array("height"=>5)); ?></a>

                    <div class="nav-collapse">
                        <?php $this->widget('application.extensions.emenu.EMenu',array(
                            'theme'=>'flickr', //adobe, mtv, lwis,flickr,nvidia,vimeo
                            // 'submenuHtmlOptions'=>array('class'=>'dropdown-menu'),   // esta opcion malogar la lista despelagable desactivarla
                            /*'itemCssClass'=>'item-test',*/
                            'encodeLabel'=>false,
                            'items'=>array(
                                array('label'=>'Inicio', 'url'=>array('/site/index'),'visible'=>!Yii::app()->user->isGuest),

                                array('label'=>'Operaciones ', 'url'=>'#', //'itemOptions'=>array('class'=>'dropdown','tabindex'=>"-1"),'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle'=>"dropdown"),
                                    'items'=>array(
                                        array('label'=>'Ver Peticiones Oferta', 'url'=>'/recurso/clipro/muestraofertas'),
                                        array('label'=>'Ventas', 'url'=>'/recurso/Ocompra/admin'),

                                    ) ,
                                    'visible'=>!Yii::app()->user->isGuest
                                ),

                                array('label'=>'Login', 'url'=>Yii::app()->user->ui->loginUrl  , 'visible'=>Yii::app()->user->isGuest),
                                array('label'=>'Cerrar sesion ('.Yii::app()->user->name.')', 'url'=>Yii::app()->user->ui->logoutUrl , 'visible'=>!Yii::app()->user->isGuest),

                            ),
                        )); ?>
                    </div>
                </div>
            </div>
        </div>




















    <?php
    }

} else  {

    ?>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <!-- Be sure to leave the brand out there if you want it shown -->
                <a class="brand" href="#"><?php echo CHtml::image(Yii::app()->getTheme()->baseUrl.Yii::app()->params['rutatemaimagenes'].'helius.png',"Helius",array("height"=>5)); ?></a>

                <div class="nav-collapse">

                </div>
            </div>
        </div>
    </div>

<?php
}
?>

 <?php
 }
?>