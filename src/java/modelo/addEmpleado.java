/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import conexion.ConexionJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;



public class addEmpleado {
       //metodo para agregar registros en la base de datos  
       public void agrega(empleado empleado){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //INSERT SQL
            String sql = "INSERT INTO empleados (nombre,apellido,direccion,telefono,dui,nit,nip,isss,salario,username,password,email,role)"+"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            String status = "";
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, empleado.nombre);
                pst.setString(2, empleado.apellido);
                pst.setString(3, empleado.direccion);
                pst.setString(4, empleado.telefono);
                pst.setString(5, empleado.dui);
                pst.setString(6, empleado.nit);
                pst.setString(7, empleado.nip);
                pst.setString(8, empleado.isss);
                pst.setDouble(9, empleado.salario);
                pst.setString(10, empleado.user);
                pst.setString(11, empleado.password);
                pst.setString(12, empleado.email);
                pst.setString(13, empleado.role);         
                int i = pst.executeUpdate();
                // ENVIA MENSAJE DEPENDIENDO SI DE GUARDO O NO
                if (i != 0) {
                    status = "Guardado";
                } else {
                    status = "No Guardado";
                 }
                con.conectar().close();
 
            } catch (SQLException ex) {//captura excepciones del codigo si hubo error
                ex.printStackTrace();         
        }
            
            
       }
       //metodo para editar  registros en la base de datos
         public void edita(empleado empleado){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "UPDATE empleados\n" +
            "SET  nombre=?, apellido=?, direccion=?, telefono=?, dui=?, nit=?, nip=?, isss=?, salario=?, username=?, password=?, email=?, role=?\n" +
            "WHERE  id_campo="+empleado.codigo+";";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, empleado.nombre);
                pst.setString(2, empleado.apellido);
                pst.setString(3, empleado.direccion);
                pst.setString(4, empleado.telefono);
                pst.setString(5, empleado.dui);
                pst.setString(6, empleado.nit);
                pst.setString(7, empleado.nip);
                pst.setString(8, empleado.isss);
                pst.setDouble(9, empleado.salario);
                pst.setString(10, empleado.user);
                pst.setString(11, empleado.password);
                pst.setString(12, empleado.email);
                pst.setString(13, empleado.role);         
                int i = pst.executeUpdate();
                 // ENVIA MENSAJE DEPENDIENDO SI DE EDITO O NO
                 if (i != 0) {
                    status = "Editado";
                } else {
                    status = "No Editado";
                 }
                con.conectar().close();
 
            } catch (SQLException ex) {//captura excepciones del codigo si hubo error
                ex.printStackTrace();         
        }
            
            
            
       }
      // metodo para eliminar  registros en la base de datos 
       public void elimina(empleado empleado) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            stmt.execute( "DELETE FROM empleados\n" +
           "WHERE  id_campo="+empleado.codigo+";");             
            
       }

        

   
 }

    
    

