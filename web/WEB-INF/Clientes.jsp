<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
        <div id="wrapper">
            <!--menu estilo responsivo-->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.png">
                    </a>
                </div>
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;Bienvenido(a):
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
                       <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/LogoutServlet"><i class="fa fa-fw fa-power-off"></i>Cerrar Sesi&oacute;n</a>
                        </li>
                    </ul>
                </li>
            </ul>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="LogoutServlet">
                                <i class="fa fa-fw fa-pie-chart"></i> Clientes                    
                                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="svg-triangle  extended">                    
                                <polygon style="border-color: white;" points="22,20 -5,40 0,0"></polygon>
                                </svg>
                            </a>
                        </li> 
                         <li>
                        <a href="membresia"><i class="fa fa-fw fa-cog"></i> Beneficios</a>
                        </li>
                          <li>
                          <a href="ventas"><i class="fa fa-fw fa-calculator"></i> Ventas
                          </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--contenedor del sitio clientes-->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-10">
                            <h1 class="page-header" style="margin-top:0;">
                                <i class="fa pg fa-fw fa-bell"></i> Administraci&oacute;n de Clientes
                            </h1>
                        </div>

                        <div class="col-lg-2">
                            <button type="button" id="save-notify" name="regresar" class="col-lg-12 t5 btn-left btn btn-default" data-target="#agregarusuario" data-toggle="modal">
                                <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                Agregar Cliente
                            </button>
                        </div>
                    </div>
                    <div id="page-wrapper">
                        <div class="container-fluid">
                            <div class="row gray-row">
                                <article class="center2" >
                                    <!--jsp donde se muestra la tabla de clientes-->
                                     <jsp:include page="tableClientes.jsp" /> 
                                </article>
                            </div>
                        </div>
                    </div>
                 <!--pie de pagina-->
                    <jsp:include page="footer.jsp" />
                </div>
            </div>
        </div>
<!-- alertas y ventanas emergentes -->
 <jsp:include page="alert.jsp" />
 <jsp:include page="addClientes.jsp" />
 <jsp:include page="readClientes.jsp" />
    </body>

</html>
