<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->

<div class="modal fade resette" id="readmembresia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="agregaruser" action="formEditaMembresia" method="post" class="resetform form-horizontal">
            <div class="modal-header">
                <div class="col-md-6">
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-users"></i> Editar Beneficios
                </h4>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                        <label class="col-md-6 control-label">ID Cliente</label>
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
                            <input class="form-control addnombre" type="text" name="nombre" placeholder="Ingresar el Nombre de la Membresia" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripcion</label>
                        <div class="col-md-8">
                            <textarea  class="form-control adddescripcion" row="10"  cols="30" name="descripcion" placeholder="Ingresar descripcion" required="required" maxlength="100" minlength="3"></textarea>   
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Costo</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control addcosto" id="money" type="text" name="costo" placeholder="Ingresar el Costo" required="required"/>    
                            </div>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-md-3 control-label">Beneficios:</label>
                        <div class="col-md-8">
                        <div class="checkbox">
                             <label><input class="c0 check-all" type="checkbox">Seleccionar Todos</label>
                        </div>
                        <div class="checkbox">
                            <label><input class="check c1" type="checkbox" name="beneficio" value="5% de Descuento">5% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input class="check c2" type="checkbox" name="beneficio" value="15% de Descuento">15% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input class="check c3" type="checkbox" name="beneficio" value="25% de Descuento">25% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input class="check c4" type="checkbox" name="beneficio" value="30% de Descuento">30% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input  class="check c5" type="checkbox" name="beneficio" value="$10 GiftCard Mensual">$10 GiftCard Mensual</label>
                        </div> 
                            <div class="checkbox">
                            <label><input class="check c6"  type="checkbox" name="beneficio" value="$15 GiftCard Mensual">$15 GiftCard Mensual</label>
                        </div>
                       <div class="checkbox">
                            <label><input class="check c7"type="checkbox" name="beneficio" value="Parqueo Gratis">Parqueo Gratis</label>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnCerrar" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" id="agregar-submit" class="btn btn-success">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>
