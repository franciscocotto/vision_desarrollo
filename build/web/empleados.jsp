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
       <jsp:include page="WEB-INF/AddEmpleados.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readempleado');
            var currentTR = $(this).closest('tr');
            var nombre = currentTR.find("td.nombre").text();
            var cod = currentTR.find("td.codigo").text();
            var apellido = currentTR.find("td.apellido").text();
            var direccion = currentTR.find("td.direccion").text();
             var telefono = currentTR.find("td.telefono").text();
             var dui = currentTR.find("td.dui").text();
             var nit = currentTR.find("td.nit").text();
             var nip = currentTR.find("td.nip").text();
             var isss = currentTR.find("td.isss").text();
            var salario = currentTR.find("td.salario").text().replace("$", "");
            var username = currentTR.find("td.user").text();
            var password = currentTR.find("td.password").text();
             var email = currentTR.find("td.email").text();
              var rol = currentTR.find("td.role").text();
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.addapellido', myModal).val(apellido);
            $('.adddireccion', myModal).val(direccion);
            $('.addtelefono', myModal).val(telefono);
            $('.adddui', myModal).val(dui);
            $('.addnit', myModal).val(nit);
            $('.addnip', myModal).val(nip);
            $('.addisss', myModal).val(isss);
            $('.addsalario', myModal).val(salario);
            $('.addusername', myModal).val(username);
            $('.addpassword', myModal).val(password);
            $('.addemail', myModal).val(email);
            
            if(rol==="admin\n"){
                $('.addrol', myModal).prop('selectedIndex',0);
            }
            else if(rol==="user\n"){
              $('.addrol', myModal).prop('selectedIndex',1);
            }
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
            var cod = currentTR.find("td.codigo").text();
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
