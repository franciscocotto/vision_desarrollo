<%-- 
    Document   : index
    Created on : 12-nov-2018, 23:40:36
    Author     : Angel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html class="fixed header-dark">
 <head>
       <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Visi&oacute;n y Desarrollo</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">
         <script src="js/dashboard/modernizr.js"></script>
       <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head> 
    <body>
        <% // Para fijar una variable en un jsp
            HttpSession sesion = request.getSession();
            String rol;
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("rol")!=null){
                rol = sesion.getAttribute("rol").toString();
                if(!rol.equals("Admin_Role")){
                    out.print("<script>location.replace('LogoutServlet');</script>");
                }
            }
            else{
                out.print("<script>location.replace('login.jsp');</script>");
            }
            
            application.setAttribute("admin", new Integer(1));

             // Para leerla en otro o el mismo JSP
                Integer valor = (Integer)application.getAttribute("admin");
        %>
        <!--include que muestra los datos de las Beneficios-->
       <jsp:include page="WEB-INF/AddServicios.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readservicio');
            var currentTR = $(this).closest('tr');
            var descripcion = currentTR.find("td.descripcion").text();
            var cod = currentTR.find("td.cod").text();
            var fecha = currentTR.find("td.fecha").text();
            var precio = currentTR.find("td.precio").text().replace("$", "");
         
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.adddescripcion', myModal).val(descripcion);
            $('.addfecha', myModal).val(fecha);
            $('.addprecio', myModal).val(precio);
          
             //mostrar modal
            myModal.modal({ show: true });
              return false;
            });
          });
          
          //script que permite eliminar registros
          $('a.delete').on('click', function() {
            var myModal = $('#confirmDelete');
             //capturar datos desde tabla
            var currentTR = $(this).closest('tr');
            var cod = currentTR.find("td.cod").text();
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            //mostrar modal
            myModal.modal({ show: true });
              return false;
            });
            
                 //mascara para dinero
        $(function() {
            $('#money').maskMoney();
        });
        </script>
    </body>
</html>
