<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->

<div class="modal fade resette" id="readempleado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="agregaruser" action="formEditaEmpleado" method="post" class="resetform form-horizontal">
            <div class="modal-header">
                <div class="col-md-6">
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-users"></i> Editar Empleado
                </h4>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                        <label class="col-md-6 control-label">ID Empleado</label>
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
                            <input class="form-control addnombre" type="text" name="nombre" placeholder="Ingresar el Nombre del Empleado" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Apellido:</label>
                        <div class="col-md-8">
                            <input  class="form-control addapellido" row="10"  cols="30" name="apellido" placeholder="Ingresar Apellido del Empleado" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                   <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Direcci&oacute;n:</label>
                        <div class="col-md-8">
                            <input  class="form-control adddireccion" row="10"  cols="30" name="direccion" placeholder="Ingresar Direcci&oacute;n" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Tel&eacute;fono:</label>
                        <div class="col-md-8">
                            <input  class="form-control addtelefono" name="telefono" placeholder="Ingresar Tel&eacute;fono" required="required" maxlength="8" minlength="8"/>  
                        </div>
                    </div>
                     <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>DUI:</label>
                        <div class="col-md-8">
                            <input class="form-control adddui dui" type="text" name="dui" placeholder="Ingresar el DUI del Empleado" required="required" maxlength="10" minlength="10"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIT:</label>
                        <div class="col-md-8">
                            <input class="form-control addnit nit" type="text" name="nit" placeholder="Ingresar el NIT del Empleado" required="required" maxlength="17" minlength="17"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIP:</label>
                        <div class="col-md-8">
                            <input class="form-control addnip nip" type="text" name="nip" placeholder="Ingresar el NIP del Empleado" required="required" maxlength="12" minlength="12"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>ISSS:</label>
                        <div class="col-md-8">
                            <input class="form-control addisss isss" type="text" name="isss" placeholder="Ingresar el ISSS del Empleado" required="required" maxlength="9" minlength="9"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Salario:</label>
                        <div class="col-md-8"> 
                            <div class="input-group">
                              <span class="input-group-addon">$</span>
                            <input class="form-control addsalario" id="money" type="text" name="salario" placeholder="Ingresar el salario" required="required"/>    
                            </div>
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Email:</label>
                        <div class="col-md-8">
                            <input  class="form-control addemail" row="10"  cols="30" name="email" placeholder="Ingresar Email" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                     <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Usuario:</label>
                        <div class="col-md-8">
                            <input  class="form-control addusername" row="10"  cols="30" name="user" placeholder="Ingresar Usuario" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                   <div class="form-group alfanumerico">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Password:</label>
                        <div class="col-md-8">
                            <input  class="form-control addpassword" row="10"  cols="30" name="password" placeholder="Ingresar Password" required="required" maxlength="60" minlength="3"/>  
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Tipo Usuario</label>
                        <div class="col-md-5">
                            <select class="form-control addrol" required name="role">
                                
                                <option value="admin">Administrador</option>
                                <option value="user">Empleado</option>
                            </select>
                        </div>
                    </div>    
                  
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnCerrar" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" id="agregar-submit" class="btn btn-success">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>
