<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--preparando conexion a base de datos en jsp-->
<%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
            String sql2="select * from membresia ORDER BY id_membresia;";     
            Statement st2;//preparando envio de consulta select
            
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql2);//resultset %>               
<table id="example" class="table tabler hover link table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>N°</th>
            <th>Nombre Membresia</th>
            <th>ID_membresia</th>
            <th>Descripci&oacute;n</th>
            <th>Costo</th>
            <th>Beneficios</th>
            <th>Ver</th>
            <th>Eliminar</th>             
        </tr>
    </thead>
    <tbody>
        <!--llenando datos de tabla desde base de datos-->
          <%while(r.next()){%> 
        <tr>
            <td></td>
            <td class="nombre"><%out.println(r.getString("nombremembresia"));%></td>
            <td class="codigo"><%out.println(r.getString("id_membresia"));%></td>
            <td class="descripcion"><%out.println(r.getString("descripcion"));%></td>
            <td class="costo">$<%out.println(r.getString("costo"));%></td>
            <td class="beneficios"><%out.println(r.getString("beneficios"));%></td>
            <td>
                <!--para edita-->
                <a class="center btn btn-default edit" >
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
                    System.out.println("error: "+ex.toString() );
     }%>     