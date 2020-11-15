<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<!--preparando conexion a base de datos en jsp-->
<%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
            String sql2="select * from capital  ORDER BY id_capital;";     
            Statement st2;//preparando envio de consulta select
            
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql2);//resultset %>   
<table id="example" class="table tabler hover link table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>N°</th>
            <th>Descripci&oacute;n</th>
            <th>ID_Servicio</th>
            <th>Fecha</th>
            <th>Monto</th>
            <th>Ver</th>
            <th>Eliminar</th>             
        </tr>
    </thead>
    <tbody>
        <!--llenando datos de tabla desde base de datos-->
          <%while(r.next()){%> 
        <tr>
            <td></td>
            <td class="descripcion"><%out.println(r.getString("descripcion"));%></td>
            <td class="cod"><%out.println(r.getString("id_capital"));%></td>
            <td class="fecha"><%out.println(r.getString("fecha"));%></td>
            <td class="precio">$<%out.println(r.getString("monto"));%></td>
            <td>
                <!--para edita-->
                <a class="center btn btn-default edit">
                    <span class="glyphicon glyphicon-pencil"></span>                  
                </a>
            </td>
            <td>
                <!--para eliminar-->
                <a class="center btn btn-default delete">
                   <span class="glyphicon glyphicon-trash"> </span>                 
                </a>
            </td>

        </tr> 
         <%}%>
    </tbody>
</table>
     <% } catch (SQLException ex) {//captura error de existir alguno.
                    System.out.println("error: "+ex );
     }%>     