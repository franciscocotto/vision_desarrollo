<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<header class="header">
			<div class="logo-container">
				<a href="../2.2.0" class="logo">
					<img src="images/logo.png" width="155" height="50" alt="Porto Admin" />
				</a>
				
			</div>
			
			<!-- start: search & user box -->
				<div class="header-right">
				<span class="separator"></span>

				<div id="userbox" class="userbox">
					<a href="#" data-toggle="dropdown">
						<figure class="profile-picture">
							<img src="images/!logged-user.jpg"  class="rounded-circle" data-lock-picture="images/!logged-user.jpg" />
						</figure>
						<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
                                                    <span class="name">
                                                      <% 
                                                        String url_inicio = "";
                                                        Integer valor = (Integer)getServletContext().getAttribute("admin");
                                                         if( valor == 1){
                                                             url_inicio = "admin.jsp";
                                                        %> 
                                                        Administrador
                                                       <%} else{
                                                            url_inicio = "user.jsp";
                                                        %> 
                                                        Empleado
                                                       <%} %>  
                                                      </span>
							<span class="role"></span>
						</div>

						<i class="fa custom-caret"></i>
					</a>

					<div class="dropdown-menu" style="">
						<ul class="list-unstyled mb-2">
							<li class="divider"></li>
							<li>
								<a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/LogoutServlet"><i class="fas fa-power-off"></i> Cerrar Sesi&oacute;n</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end: search & user box -->
</header>