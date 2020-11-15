<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="agregarventa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-calculator"></i> Agregar Nueva Venta
                </h4>
            </div>
            <form id="agregaruser" action="formVenta" method="post" class="resetform form-horizontal">
                <div class="modal-body">
                    <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Nombre:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="nombre" placeholder="Ingresar el Nombre de la Venta" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripci&oacute;n:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="descripcion" placeholder="Ingresar Descripc&oacute;n" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>               
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Cantidad:</label>
                        <div class="col-md-8">
                            <input  class="form-control" name="cantidad" placeholder="Ingresar Cantidad" required="required" maxlength="8" minlength="1"/>  
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Total Venta:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control" id="money" type="text" name="precio" placeholder="Ingresar el precio" required="required"/>    
                            </div>
                        </div>
                    </div>                
                    <div class="form-group">
                        <label class="col-md-3 control-label">Forma de Pago</label>
                        <div class="col-md-5">
                            <select class="form-control" required name="pago">
                                
                                <option value="1">Contado</option>
                                <option value="2">Credito</option>
                            </select>
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
