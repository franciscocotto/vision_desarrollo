<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--preparando conexion a base de datos en jsp-->
<%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
                    String sql2="SELECT nombre, id_campo, apellido, direccion,telefono,dui,nit,nip,isss, salario, username, password, email, role FROM  empleados ORDER BY id_campo";     
    
            Statement st2;//preparando envio de consulta select
            
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql2);//resultset %>               
<table id="example" class="table tabler hover link table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>N°</th>
            <th>Nombre Empleado</th>
            <th>ID_empleado</th>
            <th>Apellido Empleado</th>
            <th>Direcci&oacute;n</th>
            <th>Tel&eacute;fono</th>
            <th>DUI</th>
             <th>NIT</th>
             <th>NIP</th>
             <th>ISSS</th>
             <th>Salario</th>
             <th>Usuario</th>
             <th>Password</th>
             <th>Email</th>
             <th>Rol</th>
            <th>Ver</th>
            <th>Eliminar</th>             
        </tr>
    </thead>
    <tbody>
        <!--llenando datos de tabla desde base de datos-->
          <%while(r.next()){%> 
        <tr>
            <td></td>
            <td class="nombre"><%out.println(r.getString("nombre"));%></td>
            <td class="codigo"><%out.println(r.getString("id_campo"));%></td>
            <td class="apellido"><%out.println(r.getString("apellido"));%></td>
            <td class="direccion"><%out.println(r.getString("direccion"));%></td>
            <td class="telefono"><%out.println(r.getString("telefono"));%></td>
            <td class="dui"><%out.println(r.getString("dui"));%></td>
            <td class="nit"><%out.println(r.getString("nit"));%></td>
            <td class="nip"><%out.println(r.getString("nip"));%></td>
            <td class="isss"><%out.println(r.getString("isss"));%></td>
             <td class="salario">$<%out.println(r.getString("salario"));%></td>
              <td class="user"><%out.println(r.getString("username"));%></td>
               <td class="password"><%out.println(r.getString("password"));%></td>
               <td class="email"><%out.println(r.getString("email"));%></td>
                <td class="role"><%out.println(r.getString("role"));%></td>
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
                    System.out.println("error: "+ex );
     }%>     