<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
        <div id="wrapper">
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
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="index.jsp">
                                <i class="fa fa-fw fa-pie-chart"></i> Clientes                                             
                            </a>
                        </li> 
                         <li>
                        <a href="membresias.jsp"><i class="fa fa-fw fa-cog"></i> Beneficios</a>
                        </li>
                        <li  class="active">
                        <a href="error.jsp"><i class="fa fa-fw fa-cog"></i>Error
                            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="svg-triangle  extended">                    
                                <polygon style="border-color: white;" points="22,20 -5,40 0,0"></polygon>
                                </svg>
                        </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div id="page-wrapper">
                        <div class="container-fluid">

                            <div class="row gray-row">
                                <article class="center2" >
                                    <h2>ERROR</h2>
                                    <p>No puede Borrarse el Registro pues existe un cliente con esta membresia</p>
                                   </article>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="footer.jsp" />
                </div>
            </div>
        </div>
    </body>

</html>
