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
        <section class="body">
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
        <!--include que muestra los datos de los clientes-->
  
        <jsp:include page="WEB-INF/Admin.jsp" />
<!--       llama todos los script-->        
        <script src="js/scripts.js"></script>
<!--       scripts que permiten obtener datos del cliente en la ventana emergente-->
        <script>
          $( "a.edit" ).each(function(index) { 
                $(this).on("click", function(){
             var myModal = $('#editarusuario');
             //capturar datos desde tabla
            var currentTR = $(this).closest('tr');
            var cod = currentTR.find("td.codigo").text();
            var nombre = currentTR.find("td.nombre").text();
            var apellido = currentTR.find("td.apellido").text();
            var edad = currentTR.find("td.edad").text();
            var sexo = currentTR.find("td.sexo").text();
            var ndui = currentTR.find("td.ndui").text();
            var nnit = currentTR.find("td.nnit").text();
            var ingreso = currentTR.find("td.ingreso").text();
//            var peso = currentTR.find("td.peso").text().replace('kg', '');
//            var estatura = currentTR.find("td.estatura").text().replace('cm', '');
//            var imc = currentTR.find("td.imc").text();
            var membresia = currentTR.find("td.idmembresia").text().replace(/\n/g, '');
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.addapellido', myModal).val(apellido);
            $('.addedad', myModal).val(edad);
           if(sexo==="Hombre\n"){
                $('.addsexo', myModal).prop('selectedIndex',0);
            }
            else if(sexo==="Mujer\n"){
               $('.addsexo', myModal).prop('selectedIndex',1);
            }
            $('.adddui', myModal).val(ndui);
            $('.addnnit', myModal).val(nnit);
            $('.addingreso', myModal).val(ingreso);
//            $('.addpeso', myModal).val(peso);
//            $('.addestatura', myModal).val(estatura);
//            $('.addimc', myModal).val(imc);
            $('.addmembresia', myModal).val(membresia);

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
        </script>
        </section>
    </body>
</html>
