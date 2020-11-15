<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Modal Desvincular -->
<div class="modal fade resette" id="editarusuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
             <form id="editaruser" action="formEditClientes" method="post" class="resetform form-horizontal">
            <div class="modal-header">
                <div class="col-md-6">
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-users"></i> Editar Cliente
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
                            <input class="form-control addnombre" type="text" name="nombre" placeholder="Ingresar el Nombre del Cliente" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Apellido:</label>
                        <div class="col-md-8">
                            <input class="form-control addapellido" type="text" name="apellidos" placeholder="Ingresar el Apellido del Cliente" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                     <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Edad:</label>
                        <div class="col-md-8">
                            <input class="form-control addedad" type="text" name="edad" placeholder="Ingresar la Edad" required="required" maxlength="3" minlength="1"/>    
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Sexo</label>
                        <div class="col-md-5">
                            <select class="form-control addsexo" required name="sexo">
                                <option>Hombre</option>
                                <option>Mujer</option>                           
                            </select>
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>DUI:</label>
                        <div class="col-md-8">
                            <input class="form-control dui adddui" type="text" name="dui" placeholder="Ingresar el DUI del Cliente" required="required" maxlength="10" minlength="10"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIT:</label>
                        <div class="col-md-8">
                            <input class="form-control nit addnnit" type="text" name="nit" placeholder="Ingresar el NIT del Cliente" required="required" maxlength="17" minlength="17"/>    
                        </div>
                    </div>
                    <script>
                             function CalculoImc2(monto3, monto4, total1) {

                   montoParse3 = parseFloat(monto3.value);
                   montoParse4 = parseFloat(monto4.value);

                   if (typeof montoParse3 === 'number' && !isNaN(montoParse3) ) {

                       var ivaCalc2   = montoParse4 * montoParse4;
                       var totalCalc2 =  (montoParse3 / ivaCalc2)*10000 ;

                    if (isNaN(ivaCalc2)) { 
                        $('#total1').val('0');

                   }                    
                    else if (isNaN(totalCalc2)) { 
                        $('#total1').val('0');

                   } 
                   
                    else
 
                        $('#total1').val(totalCalc2.toFixed(1));

                   } 
                   else if (isNaN(montoParse3)) { 
                        $('#total1').val('0');

                   }
                  
                  else {
                       total1.value = '';
                       monto3.value = '';
                       monto4.value = '';
                       console.log('Introduce un numero válido');
                   }
                 }
                 function getval2(sel)
                     {
                      var monto3= document.getElementById('Monto3');
                      var monto4 = document.getElementById('Monto4');
                      var total1 = document.getElementById('Total1');
                        CalculoImc2(monto3, monto4, total1)
                    }
                    </script>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Peso (kg):</label>
                        <div class="col-md-8">
                            <input class="form-control addpeso" type="text" name="peso" id="Monto3" onchange="getval2(this);" placeholder="Ingresar el peso del Cliente" required="required" maxlength="17" minlength="1"/>    
                        </div>
                    </div>
                      <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Estatura (cm):</label>
                        <div class="col-md-8">                           
                            <input class="form-control addestatura" type="text" name="estatura" onchange="getval2(this);" id="Monto4"  placeholder="Ingresar la estatura del Cliente" required="required" maxlength="17" minlength="1"/>    
                        </div>
                      </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>IMC:</label>
                        <div class="col-md-8">
                           <input class="form-control addimc" type="text" name="imc"  id="total1"  readonly="readonly" required="required"/>               
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label" style="margin-right: 15px !important;"><strong class="colorred">*</strong>Fecha de Ingreso</label>

                        <div class="col-md-4 input-group input-append  dateagenowPicker">
                            <input type='text' class="form-control addingreso date" placeholder="DD/MMM/YYYY" readonly="readonly" name="fechaingreso" required="required" />
                            <span class="input-group-addon add-on">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    <jsp:useBean id="con" class="modelo.addClientes" scope="page"></jsp:useBean>
                     <%
                         ResultSet rs =con.mostrar();
                      %>   
                    <div class="form-group">
                        <label class="col-md-3 control-label">Tipo Membresia</label>
                        <div class="col-md-5">
                            <select class="form-control addmembresia" required name="membresia">
                                 <%
                                     while(rs.next()){
                                 %>
                                <option value="<%=rs.getString("id_membresia")%>"><%=rs.getString("nombremembresia")%></option>
                                 <%}%>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" id="editar-submit" class="btn btn-success">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>
