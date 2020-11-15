<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="readdeuda" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                 <form id="agregaruser" action="formDeuda" method="post" class="resetform form-horizontal">
                        <div class="modal-header">
                <div class="col-md-6">
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-money"></i> Abonar a Deuda
                </h4>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                        <label class="col-md-6 control-label">ID Deuda</label>
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
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Nombre:</label>
                        <div class="col-md-8">
                            <input class="form-control addnombre" type="text"  placeholder="Ingresar el Nombre de la Deuda"  maxlength="60" minlength="3" readonly/>    
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripci&oacute;n:</label>
                        <div class="col-md-8">
                            <input  class="form-control adddescripcion" row="10"  cols="30"  placeholder="Ingresar descripc&oacute;n"  maxlength="60" minlength="3" readonly/>  
                        </div>
                    </div>               
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Cantidad:</label>
                        <div class="col-md-8">
                            <input  class="form-control addcantidad"  placeholder="Ingresar Cantidad"  maxlength="8" minlength="1" readonly/>  
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Deuda:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control addprecio" id="money" type="text" name="precio"  placeholder="Ingresar el precio"  readonly/>    
                            </div>
                        </div>
                    </div>  
                      <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Abono Anterior:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control addabono" id="money" type="text" name="abono1"  readonly/>    
                            </div>
                        </div>
                    </div>   
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Agregar Nuevo Abono:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control" id="money" type="text" name="abono" placeholder="Ingresar el Abono" required="required"/>    
                            </div>
                        </div>
                    </div>    
                     <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Total Deuda Pendiente:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control adddeuda" id="money" name="deuda" type="text" readonly required="required"/>    
                            </div>
                        </div>
                    </div>    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" id="agregar-submit" class="btn btn-success">Abonar</button>
                </div>
            </form>
        </div>
    </div>
</div>     
