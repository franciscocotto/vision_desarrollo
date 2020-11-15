<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="agregarmembresia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-users"></i> Agregar Nueva Beneficio
                </h4>
            </div>
            <form id="agregaruser" action="formMembresia" method="post" class="resetform form-horizontal">
                <div class="modal-body">
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Nombre:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="nombre" placeholder="Ingresar el Nombre de la Membresia" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Descripcion</label>
                        <div class="col-md-8">
                            <textarea  class="form-control" row="10"  cols="30" name="descripcion" placeholder="Ingresar descripcion" required="required" maxlength="100" minlength="3"></textarea>   
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Costo</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control" id="money" type="text" name="costo" placeholder="Ingresar el Costo" required="required"/>    
                            </div>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-md-3 control-label">Beneficios:</label>
                        <div class="col-md-8">
                       <div class="checkbox">
                            <label><input class="c0 check-all" type="checkbox" >Seleccionar Todos</label>
                        </div>                     
                        <div class="checkbox">
                            <label><input type="checkbox" class="check" name="beneficio" value="5% de Descuento">5% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="15% de Descuento">15% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="15% de Descuento">25% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="30% de Descuento">30% de Descuento</label>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="$10 GiftCard Mensual">$10 GiftCard Mensual</label>
                        </div> 
                            <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="$15 GiftCard Mensual">$10 GiftCard Mensual</label>
                        </div>
                       <div class="checkbox">
                            <label><input type="checkbox" name="beneficio" value="Parqueo Gratis">Parqueo Gratis</label>
                        </div>
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
