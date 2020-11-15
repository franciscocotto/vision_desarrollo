<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="readservicio" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                 <form id="agregaruser" action="formEditaServicios" method="post" class="resetform form-horizontal">
                        <div class="modal-header">
                <div class="col-md-6">
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-bell"></i> Editar Pago de Servicios
                </h4>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                        <label class="col-md-6 control-label">ID Servicio</label>
                        <div class="col-md-6">
                            <input class="form-control addcodigo" type="text" name="codigo" readonly />    
                        </div>
                    </div>                   
                    </div>
                 <div class="col-md-1">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                 </div>  
                <div class="modal-body">
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripci&oacute;n</label>
                        <div class="col-md-8">
                            <input class="form-control adddescripcion" type="text" name="descripcion" placeholder="Ingresar la descripción del servicio" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div> 
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Monto:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control addprecio" id="money" type="text" name="precio" placeholder="Ingresar el Monto" required="required"/>    
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" style="margin-right: 15px !important;"><strong class="colorred">*</strong>Fecha de Ingreso</label>

                        <div class="col-md-4 input-group input-append  dateagenowPickermodal">
                            <input type='text' class="form-control addfecha date" placeholder="DD/MMM/YYYY" readonly="readonly" name="fechaingreso" required="required" />
                            <span class="input-group-addon add-on">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" id="agregar-submit" class="btn btn-success">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>     
