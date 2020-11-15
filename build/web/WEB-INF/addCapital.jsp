<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->

<style>
    .bootstrap-datetimepicker-widget{
      transform: translate(0, 0em);
      position: fixed !important;
     left: 27% !important;
     top: 67% !Important;

    }
    
</style>
<div class="modal fade resette" id="agregarcapital" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-bank"></i> Agregar Nuevos Capital de Inversi&oacute;n
                </h4>
            </div>
            <form id="agregaruser" action="formCapital" method="post" class="resetform form-horizontal">
                <div class="modal-body" style="min-height:  150px !important">
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripci&oacute;n</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="descripcion" placeholder="Ingresar la descripción del monto" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div> 
               
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Monto:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control" id="money" type="text" name="precio" placeholder="Ingresar el Monto" required="required"/>    
                            </div>
                        </div>
                    </div>
                      <div class="form-group">
                        <label class="col-md-3 control-label" style="margin-right: 15px !important;"><strong class="colorred">*</strong>Fecha de Ingreso:</label>

                        <div class="col-md-4 input-group input-append  dateagenowPicker">
                            <input type='text' class="form-control date" placeholder="DD/MMM/YYYY" readonly="readonly" name="fechaingreso" required="required" />
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
