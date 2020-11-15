<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="agregarempleado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-user-md"></i> Agregar Nuevo Empleado
                </h4>
            </div>
            <form id="agregaruser" action="formEmpleados" method="post" class="resetform form-horizontal">
                <div class="modal-body">
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Nombre:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="nombre" placeholder="Ingresar el Nombre del Empleado" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Apellido:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="apellido" placeholder="Ingresar Apellido del Empleado" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                   <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Direcci&oacute;n:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="direccion" placeholder="Ingresar Direcci&oacute;n" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Tel&eacute;fono:</label>
                        <div class="col-md-8">
                            <input  class="form-control" name="telefono" placeholder="Ingresar Tel&eacute;fono" required="required" maxlength="8" minlength="8"/>  
                        </div>
                    </div>
                     <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>DUI:</label>
                        <div class="col-md-8">
                            <input class="form-control dui" type="text" name="dui" placeholder="Ingresar el DUI del Empleado" required="required" maxlength="10" minlength="10"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIT:</label>
                        <div class="col-md-8">
                            <input class="form-control nit" type="text" name="nit" placeholder="Ingresar el NIT del Empleado" required="required" maxlength="17" minlength="17"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIP:</label>
                        <div class="col-md-8">
                            <input class="form-control nip" type="text" name="nip" placeholder="Ingresar el NIP del Empleado" required="required" maxlength="12" minlength="12"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>ISSS:</label>
                        <div class="col-md-8">
                            <input class="form-control isss" type="text" name="isss" placeholder="Ingresar el ISSS del Empleado" required="required" maxlength="9" minlength="9"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Salario:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control" id="money" type="text" name="salario" placeholder="Ingresar el Salario" required="required"/>    
                            </div>
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Email:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="email" placeholder="Ingresar Email" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                     <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Usuario:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="user" placeholder="Ingresar Usuario" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                   <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Password:</label>
                        <div class="col-md-8">
                            <input  class="form-control" row="10"  cols="30" name="password" placeholder="Ingresar Password" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Tipo Usuario</label>
                        <div class="col-md-5">
                            <select class="form-control" required name="role">
                                
                                <option value="admin">Administrador</option>
                                <option value="user">Empleado</option>
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
