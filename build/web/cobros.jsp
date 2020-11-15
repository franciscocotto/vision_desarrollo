<%-- 
    Document   : index
    Created on : 12-nov-2018, 23:40:36
    Author     : Angel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
           application.getAttribute("admin"); 
             // Para leerla en otro o el mismo JSP
                Integer valor = (Integer)application.getAttribute("admin");
        %>
        <!--include que muestra los datos de las Beneficios-->
       <jsp:include page="WEB-INF/AddCobros.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readcobro');
            var currentTR = $(this).closest('tr');
            var nombre = currentTR.find("td.nombre").text();
            var cod = currentTR.find("td.cod").text();
            var descripcion = currentTR.find("td.descripcion").text();
            var cantidad = currentTR.find("td.cantidad").text();
             var precio = currentTR.find("td.precio").text().replace("$", "");
             var abono = currentTR.find("td.abono").text().replace("$", "");
             var total_deuda = currentTR.find("td.total_pago").text().replace("$", "");
         
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.adddescripcion', myModal).val(descripcion);
            $('.addcantidad', myModal).val(cantidad);
            $('.addprecio', myModal).val(precio);
           $('.addabono', myModal).val(abono);
            $('.adddeuda', myModal).val(total_deuda);
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
