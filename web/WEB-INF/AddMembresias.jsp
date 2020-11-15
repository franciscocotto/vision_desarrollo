<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Integer valor = (Integer)getServletContext().getAttribute("admin");%>
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
                                                                <li class="nav-active">
                                                                        <a class="nav-link activo" href="#">
										<i class="far fa-address-card" aria-hidden="true"></i>
										<span>Beneficios</span>
									</a> 
                                                                </li>
                                                                <% 
                                                                if( valor == 1){
                                                                 %>  
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
                                                                     <%}  %>  
                                                                 <li class="nav">
                                                                     <a class="nav-link" href="ventas">
										<i class="fas fa-dollar-sign" aria-hidden="true"></i>
										<span>Ventas</span>
									</a> 
                                                                   </li>
                                                                   <% 
                                                                    if( valor == 1){
                                                                   %> 
                                                                 <li class="nav">
                                                                     <a class="nav-link" href="cobros">
										<i class="fa fa-fw fa-check" aria-hidden="true"></i>
										<span>Cuentas por Cobrar</span>
									</a>
                                                                      </li>
                                                                 <li class="nav">
                                                                      <a class="nav-link" href="servicios">
										<i class="fa fa-building" aria-hidden="true"></i>
                                                                                <span>Servicios B&aacute;sicos</span>
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
                                            <h2>Administraci&oacute;n de Beneficios</h2>
					</header>		
					<div class="row pt-4">
						<div class="col">
                                                    
							<section class="card">
								<header class="card-header">
                                                                    
									<div class="card-actions">
										<a href="#" class="card-action card-action-toggle" data-card-toggle></a>
									</div>

									<h2 class="card-title">Beneficios</h2>
								</header>
								<div class="card-body">
                                                                    <div class="container-fluid">
                                                                    
                                                                     <div class="col-lg-10"></div>
                                                                    <div class="col-lg-2 nopadding mr-2">

                                                                        <button type="button" id="save-notify" name="regresar" class="col-lg-12 t5 btn-left btn btn-default" data-target="#agregarmembresia" data-toggle="modal">
                                                                           <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                                                           Agregar
                                                                       </button>
                                                                    </div>
                                                                  </div>
									<hr>
                                                                        <div class="col-md-12"  style="float: none">
                                                                            	  <jsp:include page="tableMembresias.jsp" />   
                                                                        </div>
                                                                        
                                                                    </div>
								
							</section>
                                                    
						</div>
					</div>
				</section>
			</div>     

      
<!-- Modals -->
 <jsp:include page="deleteMembresia.jsp" />
 <jsp:include page="addMembresia.jsp" />
 <jsp:include page="readMembresia.jsp" />
    </body>

</html>
