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



public class addServicio {
       //metodo para agregar registros en la base de datos  
       public void agrega(servicios servicio){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //INSERT SQL
            //String sql = "INSERT INTO servicios (descripcion,fecha,monto)"+"VALUES(?,?,?)";
            String sql = "call pago_servicios(?,?,?)";
            String status = "";
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, servicio.descripcion);
                pst.setString(2, servicio.fecha);
                pst.setDouble(3, servicio.precio);
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
         public void edita(servicios servicio){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "UPDATE servicios\n" +
            "SET  descripcion=?, fecha=?, monto=?\n" +
            "WHERE  id_servicio="+servicio.codigo+";";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, servicio.descripcion);
                pst.setString(2, servicio.fecha);
                pst.setDouble(3, servicio.precio);
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
       public void elimina(servicios servicio) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            stmt.execute( "DELETE FROM servicios\n" +
           "WHERE  id_servicio="+servicio.codigo+";");             
            
       }
 }

    
    

