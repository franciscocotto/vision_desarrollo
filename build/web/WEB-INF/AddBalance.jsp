<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Integer valor = (Integer) getServletContext().getAttribute("admin");%>
<jsp:include page="header-top.jsp" />
<%
    NumberFormat formatoImporte = NumberFormat.getCurrencyInstance();
    formatoImporte = NumberFormat.getCurrencyInstance(new Locale("en","US"));
%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<div class="inner-wrapper">
    <!-- start: sidebar -->
    <aside id="sidebar-left" class="sidebar-left">

        <div class="sidebar-header">
            <div class="sidebar-title" style="color:white">
                NAVEGACI&Oacute;N
            </div>
            <div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
                <i class="fas fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <div class="nano">
            <div class="nano-content" tabindex="0" style=" right: 0px !important">
                <nav id="menu" class="nav-main" role="navigation"  style="width: 98% !important">
                    <ul class="nav nav-main">
                        <li class="nav">
                            <a class="nav-link" href="LoginServlet">
                                <i class="fas fa-users" aria-hidden="true"></i>
                                <span>Clientes</span>
                            </a> 
                        </li>
                        <li class="nav">
                            <a class="nav-link" href="membresias">
                                <i class="far fa-address-card" aria-hidden="true"></i>
                                <span>Beneficios</span>
                            </a> 
                        </li>


                        <li class="nav">
                            <a class="nav-link" href="empleados">
                                <i class="fas fa-user-friends" aria-hidden="true"></i>
                                <span>Empleados</span>
                            </a>  
                        </li>
                        <li class="nav">
                            <a class="nav-link" href="compras">
                                <i class="far fa-money-bill-alt" aria-hidden="true"></i>
                                <span>Compras</span>
                            </a> 
                        </li>
                        <li class="nav">
                            <a class="nav-link" href="deudas">
                                <i class="fas fa-file-invoice-dollar" aria-hidden="true"></i>
                                <span>Cuentas por Pagar</span>
                            </a>  
                        </li>
                        
                        <li class="nav">
                            <a class="nav-link" href="ventas">
                                <i class="fas fa-dollar-sign" aria-hidden="true"></i>
                                <span>Ventas</span>
                            </a> 
                        </li>
 
                        <li class="nav">
                            <a class="nav-link" href="cobros">
                                <i class="fa fa-fw fa-check" aria-hidden="true"></i>
                                <span>Cuentas por Cobrar</span>
                            </a>
                        </li>
                        <li class="nav">
                            <a class="nav-link" href="servicios">
                                <i class="fa fa-building" aria-hidden="true"></i>
                                <span>Proveedores y Servicios</span>
                            </a>  
                        </li>
                        <li class="nav">
                            <a class="nav-link" href="capital">
                                <i class="fas fa-donate" aria-hidden="true"></i>
                                <span>Capital</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a class="nav-link activo" href="#">
                                <i class="fas fa-chart-line" aria-hidden="true"></i>
                                <span>Balances</span>
                            </a>  
                        </li>
                    </ul>
                </nav>
                <hr class="separator" />
            </div>

            <script>
                // Maintain Scroll Position
                if (typeof localStorage !== 'undefined') {
                    if (localStorage.getItem('sidebar-left-position') !== null) {
                        var initialPosition = localStorage.getItem('sidebar-left-position'),
                                sidebarLeft = document.querySelector('#sidebar-left .nano-content');

                        sidebarLeft.scrollTop = initialPosition;
                    }
                }
            </script>


        </div>

    </aside>
    <!-- end: sidebar -->

    <section role="main" class="content-body">
        <header class="page-header">
            <h2>Administraci&oacute;n de Ventas</h2>
        </header>
        <div class="row">
            <div class="col">
		<section class="card">
                    <header class="card-header">
			<div class="card-actions">
                            <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
			</div>
                            <h2 class="card-title">Estad&iacute;sticas</h2>
                    </header>
                    <div id="card-calendar" class="card-body">
                        <hr>
                     <div class="container-fluid">
                        
                        <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="material-icons" style="font-size: 50px">request_quote</i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$1000</div>
                                        <div>Total Cuentas por Cobrar</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>

                 <div class="col-lg-3 col-md-6">
                        <div class="panel panel-warning">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                         <i class="material-icons" style="font-size: 50px">payments</i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$</div>
                                       <div>Total Cuentas por Pagar</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-danger">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="material-icons" style="font-size: 50px">monetization_on</i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$</div>
                                        <div>Total de Ingresos Beneficios</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-info">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="material-icons" style="font-size: 50px">account_balance</i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$</div>
                                        <div>Total de Dinero 
                                            <br> de Capital</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                </div>

                </div>
         
								</div>
							</section>
						</div>

					</div>

        <div class="row pt-4">
            <div class="col">
             
                <section class="card">
                    <header class="card-header">
                        <div class="card-actions">
                            <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                        </div>

                        <h2 class="card-title">Balances</h2>
                    </header>
                    <div class="card-body">
                        <div class="container-fluid">
                            <div class="col-lg-10"></div>
                            <div class="col-lg-2 nopadding mr-2">

                            </div>
                        </div>               
                        <hr>
                        <div class="col-md-12"  style="float: none">
                           <div class="container-fluid">

                            <div class="row gray-row">
                                <article class="center2" >
                                    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#example2-tab1" aria-controls="example2-tab1" role="tab" data-toggle="tab">Balance de Comprobaci&oacute;n</a></li>
        <li role="presentation"><a href="#example2-tab2" aria-controls="example2-tab2" role="tab" data-toggle="tab">Estado de Resultados</a></li>
        <li role="presentation"><a href="#example2-tab3" aria-controls="example2-tab3" role="tab" data-toggle="tab">Estado de Capital</a></li>
        <li role="presentation"><a href="#example2-tab4" aria-controls="example2-tab4" role="tab" data-toggle="tab">Balance General</a></li>
    </ul>

    <!--Tabla Balance de comprobacion-->
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="example2-tab1">
            <hr>
            <%
                conexion.ConexionJDBC con = new conexion.ConexionJDBC();
                Connection  cn = con.conectar();//se conecto a la base de datos
                String sql="call balance_comprobacion()";
                //String sql = "select * from compras";
                Statement st;
                try{
                    st = cn.createStatement();
                    ResultSet res = st.executeQuery(sql);
                    while(res.next()){
            %>
            <table id="tab1" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td>Caja</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("caja")));%></td>
                        <td></td>   
                    </tr>
                             
                     <tr>
                        <td>Inventario</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("inventario")));%></td>
                        <td></td>   
                    </tr>                              
                     <tr>
                        <td>Cuentas por Cobrar</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("cuentas_por_cobrar")));%></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>IVA Credito Fiscal</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("iva_credito")));%></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Cuentas por pagar</td>
                        <td></td>
                        <td><%out.print(formatoImporte.format(res.getDouble("cuentas_por_pagar")));%></td>   
                    </tr>
                    <tr>
                        <td>IVA Debito Fiscal</td>
                        <td></td>
                        <td><%out.print(formatoImporte.format(res.getDouble("iva_debito")));%></td>   
                    </tr>
                    <tr>
                        <td>Capital</td>
                        <td></td>
                        <td><%out.print(formatoImporte.format(res.getDouble("capital")));%></td>   
                    </tr> 
                    <tr>
                        <td>Ingreso por Venta</td>
                        <td></td>
                        <td><%out.print(formatoImporte.format(res.getDouble("ingreso_por_venta")));%></td>   
                    </tr> 
                    <tr>
                        <td>Costo de la venta</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("costo_de_venta")));%></td>
                        <td></td>   
                    </tr> 
                    <tr>
                        <td>Gasto Servicios y Proveedores</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("servicios")));%></td>
                        <td></td>   
                    </tr> 
                </tbody>
                <tfoot>
                    <tr style="font-style: bold">
                        <td>TOTAL</td>
                        <td><%out.print(formatoImporte.format(res.getDouble("Debe")));%></td>
                        <td><%out.print(formatoImporte.format(res.getDouble("Haber")));%></td>    
                    </tr>
                </tfoot>
            </table>
            <%
                }
                st.close();
                cn.close();
                }
                catch(Exception e){
                    e.printStackTrace();
                }
            %>
             <hr>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="example2-tab2">
            <hr>
            <table id="tab2" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ventas</td>
                        <td>$</td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Salarios</td>
                        <td>$</td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Proveedores y Servicios</td>
                        <td>$</td>
                        <td></td>   
                    </tr>                 
                </tbody>
                   <tfoot>
                    <tr>
                        <th align="right"><strong>TOTAL</strong></th>
                        <th>0</th>
                        <th>0</th>   
                    </tr>
        </tfoot>
            </table>
            <hr>
        </div>
          <div role="tabpanel" class="tab-pane fade" id="example2-tab3">
            <hr>
            <table id="tab3" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Capital</td>
                        <td></td>
                        <td>$</td>   
                    </tr>
                </tbody>
            <tfoot>
             <tr>
                        <th align="right"><strong>TOTAL</strong></th>
                        <th></th>
                        <th></th>   
                    </tr>
        </tfoot>
            </table>
            <hr>
        </div>
          <div role="tabpanel" class="tab-pane fade" id="example2-tab4">
            <hr>
            <table id="tab4" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th colspan="2" style="font-size: 10pt"><strong>ACTIVOS</strong></th>
                        <th colspan="2" style="font-size: 10pt"><strong>PASIVOS</strong></th>
                    </tr>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>CUENTAS</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ventas</td>
                        <td>$</td>
                        <td>Cuentas por Pagar</td>
                        <td>$</td>   
                    </tr>
                    <tr>
                        <td>Cuentas por Cobrar</td>
                        <td>$</td>
                        <td>IVA Debito Fiscal</td>
                        <td>$</td>   
                    </tr>
                      <tr>
                        <td>IVA Credito Fiscal</td>
                        <td>$</td>
                        <td>Salarios</td>
                        <td>$</td>   
                    </tr>
                      <tr>
                        <td>Proveedores y Servicios</td>
                        <td>$</td>
                        <td style="background: #28a1f6; color:white"><strong>PATRIMONIO</strong></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td>Compras</td>
                        <td>$</td>
                        <td>Capital</td>
                        <td>$</td>   
                    </tr>
                </tbody>
                 <tfoot>
             <tr>
                        <th align="right"><strong>TOTAL:</strong></th>
                        <th></th>
                         <th align="right"><strong>TOTAL:</strong></th>
                        <th></th>   
                    </tr>
        </tfoot>
            </table>
            <hr>
        </div>
        
    </div>
                                </article>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </section>
</div>
                           
    
   
  