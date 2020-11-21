<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Desvincular -->
<div class="modal fade resette" id="agregarusuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="page-alerth" style="margin-top:0;">
                    <i class="fa pg2 fa-fw fa-users"></i> Agregar Nuevos Clientes
                </h4>
            </div>
            <form id="agregaruser" action="formClientes" method="post" class="resetform form-horizontal">
                <div class="modal-body">
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Nombre:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="nombre" placeholder="Ingresar el Nombre del Cliente" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group letra">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Apellido:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="apellidos" placeholder="Ingresar el Apellido del Cliente" required="required" maxlength="60" minlength="3"/>    
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Edad:</label>
                        <div class="col-md-8">
                            <input class="form-control numero" type="text" name="edad" placeholder="Ingresar la Edad" required="required" maxlength="3" minlength="1"/>    
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-md-3 control-label">Sexo</label>
                        <div class="col-md-5">
                            <select class="form-control" required name="sexo">
                               <option>Hombre</option>
                                <option>Mujer</option>                          
                            </select>
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>DUI:</label>
                        <div class="col-md-8">
                            <input class="form-control dui" type="text" name="dui" placeholder="Ingresar el DUI del Cliente" required="required" maxlength="10" minlength="10"/>    
                        </div>
                    </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>NIT:</label>
                        <div class="col-md-8">
                            <input class="form-control nit" type="text" name="nit" placeholder="Ingresar el NIT del Cliente" required="required" maxlength="17" minlength="17"/>    
                        </div>
                    </div>
<!--                    <script>
                        
                  function CalculoImc(monto, monto2, total) {

                   montoParse = parseFloat(monto.value);
                   montoParse2 = parseFloat(monto2.value);

                   if (typeof montoParse === 'number' && !isNaN(montoParse) ) {

                       var ivaCalc   = montoParse2 * montoParse2;
                       var totalCalc =  (montoParse / ivaCalc)*10000 ;

                    if (isNaN(ivaCalc)) { 
                        $('#total').val('0');

                   }                    
                    else if (isNaN(totalCalc)) { 
                        $('#total').val('0');

                   } 
                   
                    else
 
                        $('#total').val(totalCalc.toFixed(1));

                   } 
                   else if (isNaN(montoParse)) { 
                        $('#total').val('0');

                   }
                  
                  else {
                       total.value = '';
                       monto.value = '';
                       monto2.value = '';
                       console.log('Introduce un numero válido');
                   }
                 }
                 function getval(sel)
                     {
                      var monto = document.getElementById('Monto');
                      var monto2 = document.getElementById('Monto2');
                      var total = document.getElementById('Total');
                        CalculoImc(monto, monto2, total)
                    }
                    </script>
      
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Peso (kg):</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name="peso" id="Monto" onchange="getval(this);" placeholder="Ingresar el peso del Cliente" required="required" maxlength="17" minlength="1"/>    
                        </div>
                    </div>
                      <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>Estatura (cm):</label>
                        <div class="col-md-8">                           
                            <input class="form-control" type="text" name="estatura" onchange="getval(this);" id="Monto2"  placeholder="Ingresar la estatura del Cliente" required="required" maxlength="17" minlength="1"/>    
                        </div>
                      </div>
                    <div class="form-group numero">
                        <label class="col-md-3 control-label"><strong class="colorred">*</strong>IMC:</label>
                        <div class="col-md-8">
                           <input class="form-control" type="text" name="imc"  id="total"  readonly="readonly" required="required"/>               
                        </div>
                    </div>-->
                    <div class="form-group">
                        <label class="col-md-3 control-label" style="margin-right: 15px !important;"><strong class="colorred">*</strong>Fecha de Ingreso</label>

                        <div class="col-md-4 input-group input-append  dateagenowPicker">
                            <input type='text' class="form-control date" placeholder="DD/MMM/YYYY" readonly="readonly" name="fechaingreso" required="required" />
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
                            <select class="form-control" required name="membresia">
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
                    <button type="submit" id="agregar-submit" class="btn btn-success">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>     
