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
            HttpSession sesion = request.getSession();
            String usuario;
            String rol;
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("rol")!=null){
                usuario = sesion.getAttribute("user").toString();
                rol = sesion.getAttribute("rol").toString();
            }
            else{
                out.print("<script>location.replace('login.jsp');</script>");
            } 
             
           application.getAttribute("admin"); 
             // Para leerla en otro o el mismo JSP
                Integer valor = (Integer)application.getAttribute("admin");
        %>
        <!--include que muestra los datos de las Beneficios-->
       <jsp:include page="WEB-INF/AddMembresias.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readmembresia');
            var currentTR = $(this).closest('tr');
            var nombre = currentTR.find("td.nombre").text();
            var cod = currentTR.find("td.codigo").text();
            var descripcion = currentTR.find("td.descripcion").text();
            var costo = currentTR.find("td.costo").text().replace("$", "");
            var get=currentTR.find("td.beneficios").text().replace("\n", "");
            var beneficios = get.split(",");
            $.each(beneficios, function( index, beneficio ) {                            
                 $(":checkbox[value='"+$.trim(beneficio)+"']").prop("checked","true");
            });
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.adddescripcion', myModal).val(descripcion);
            $('.addcosto', myModal).val(costo);
             myModal.modal({ show: true });
                
              return false;
            });
         });
          
          //eliminando checkbox en modal al cerrar
           $("#readmembresia").on('hidden.bs.modal', function () {
                   $('input[type="checkbox"]').prop("checked", false);
                   location.reload();
            });
        //eliminando checkbox en modal al cerrar
           $("#agregarmembresia").on('hidden.bs.modal', function () {
                   $('input[type="checkbox"]').prop("checked", false);
            });
           //asignado values  checkbox en modal al abrir 
            $("#readmembresia" ).on('show.bs.modal', function(){
                $('.c1').val("5% de Descuento");
                $('.c2').val("15% de Descuento");
                $('.c3').val("25% de Descuento");
                $('.c4').val("30% de Descuento");
                $('.c5').val("$10 GiftCard Mensual");
                $('.c6').val("$15 GiftCard Mensual");
                $('.c7').val("Parqueo Gratis");
                $('.c8').val("5% de Descuento");
                select();
            });
        //eliminando registros
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
       //script para selecionar all checkbox 
      $('.check-all').checkAll();

         
        </script>
    </body>
</html>
