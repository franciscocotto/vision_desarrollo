<%-- 
    Document   : login
    Created on : 22-jun-2019, 15:30:57
    Author     : Angel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
	<head>	
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
       	<title>Login</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">	
       <link href="css/login.css" rel="stylesheet">
         <script src="js/dashboard/modernizr.js"></script>
	</head>
	<body>

<div class="logo2"></div>
   <div class="container">
    <div class="row">
        <div class="col-md-12 heightlogin" >
            <div class="pr-wrap">
                <div class="pass-reset">
                    <label>
                        Favor Ingresa Tu Correo Electr&oacute;nico  </label>
                    <input type="email" placeholder="Correo Electrónico" />
                    <input type="submit" value="Enviar" class="pass-reset-submit btn btn-success btn-sm" />
                </div>
            </div>
            <div class="wrap">
                <form id="loginform" class="login" action="LoginServlet" method="post">
                    <label>Usuario:</label>
                <input type="text" placeholder="Usuario" name="username" required maxlength="60" minlength="3"/>
                 <label>Contraseña:</label>
                <input type="password" name="password" placeholder="Contraseña" required maxlength="60" minlength="3"/>
                <input type="submit" id="ingress" value="Ingresar" class="btn btn-success btn-sm"/>
                <div class="remember-forgot">

                         <label style="color:red; text-align: center; font-weight: bold"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></label>
                           <!-- <a href="#" class="forgot-pass">Olvid&eacute; la Contraseña</a>-->
                </div>
               
                </form>
            </div>
        </div>
    </div>
    <div class="posted-by">
                <h5 style="margin-bottom:0 !important">© VISION Y DESARROLLO - 2020</h5>
    </div>


</div>
	

	 <script src="js/scripts.js"></script>
   
	</body>
</html>