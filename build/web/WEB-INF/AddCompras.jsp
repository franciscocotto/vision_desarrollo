<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Integer valor = (Integer) getServletContext().getAttribute("admin");%>
<jsp:include page="header-top.jsp" />
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
                        <%
                            if (valor == 1) {
                        %>  
                        <li class="nav">
                            <a class="nav-link" href="empleados">
                                <i class="fas fa-user-friends" aria-hidden="true"></i>
                                <span>Empleados</span>
                            </a>  
                        </li>
                        <li class="nav-active">
                            <a class="nav-link activo" href="#">
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
                        <li class="nav">
                            <a class="nav-link" href="balance">
                                <i class="fas fa-chart-line" aria-hidden="true"></i>
                                <span>Balances</span>
                            </a>  
                        </li>
                        <%}
                        %> 
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
            <h2>Administraci&oacute;n de Compras</h2>
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
                            <%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
                                Connection cn2 = con.conectar();//se conecto a la base de datos
                                String sql3 = "Select count(id_compras), Sum(cantidad), cast(SUM(precio) as DECIMAL(18,2)), cast(SUM(total_deuda) as DECIMAL(18,2)) as sumprice from compras";
                                int sum = 0;
                                Statement st2;
                                try {
                                    st2 = cn2.createStatement();
                                    ResultSet r = st2.executeQuery(sql3);
                                    if (r.next()) {
                                        int c = r.getInt(1);
                                        sum = sum + c;
                                        String str = Double.toString(sum);
                                //  String sum = r.getString("sumprice");//resultset %>   
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-dark">
                                        <div class="panel-heading h145">
                                            <div class="row vertical">
                                                <div class="col-xs-4">
                                                    <i class="far fa-money-bill-alt fa-3x"></i>
                                                </div>
                                                <div class="col-xs-6 bleft">
                                                    <div class="huge"><%out.println(r.getString(1)!= null ? r.getString(1) : '0');%></div>
                                                    <div>Total de Compras Realizadas</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-dark">
                                        <div class="panel-heading h145">
                                            <div class="row vertical">
                                                <div class="col-xs-4">
                                                    <i class="fas fa-cart-arrow-down fa-3x"></i>
                                                </div>
                                                <div class="col-xs-6 bleft">
                                                    <div class="huge"><%out.println(r.getString(2)!= null ? r.getString(2) : '0');%></div>
                                                    <div>Total de Items Comprados</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-dark">
                                        <div class="panel-heading h145">
                                            <div class="row vertical">
                                                <div class="col-xs-4">
                                                    <i class="fas fa-donate fa-3x"></i>
                                                </div>
                                                <div class="col-xs-6 bleft">
                                                    <div class="huge">$<%out.println(r.getString(3)!= null ? r.getString(3) : '0');%></div>
                                                    <div>Total de Dinero Gastado</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="panel panel-dark">
                                        <div class="panel-heading h145">
                                            <div class="row vertical">
                                                <div class="col-xs-4">
                                                    <i class="fas fa-comments-dollar fa-3x"></i>
                                                </div>
                                                <div class="col-xs-6 bleft">
                                                    <div class="huge">$<%out.println(r.getString(4)!= null ? r.getString(4) : '0');%></div>
                                                    <div>Total de Dinero 
                                                        por Pagar</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%} } catch (SQLException ex) {//captura error de existir alguno.
                                 System.out.println("error: " + ex);
                             }%>     
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

                        <h2 class="card-title">Compras</h2>
                    </header>
                    <div class="card-body">
                        <div class="container-fluid">
                            <div class="col-lg-10"></div>
                            <div class="col-lg-2 nopadding mr-2">
                                <button type="button" id="save-notify" name="regresar" class="col-lg-12 t5 btn-left btn btn-default" data-target="#agregarcompra" data-toggle="modal">
                                    <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                    Agregar
                                </button>
                            </div>
                        </div>               
                        <hr>
                        <div class="col-md-12"  style="float: none">
                            <jsp:include page="tableCompras.jsp" />  
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </section>
</div>

<!-- Modals -->
<jsp:include page="deleteCompra.jsp" />
<jsp:include page="addCompra.jsp" />
<jsp:include page="readCompra.jsp" />
</body>

</html>
