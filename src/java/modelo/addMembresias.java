/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import conexion.ConexionJDBC;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;

/**
 *
 * @author Angel Cotto
 */
public class addMembresias {
    
    
//      metodo para agregar registros en la base de datos
       public void agrega(Membresias membresia){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
//            INSERT SQL
            String sql = "INSERT INTO membresia (nombremembresia,descripcion,costo,beneficios)"+"VALUES(?,?,?,?)";
            String status = "";
//            PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, membresia.nombre);
                pst.setString(2, membresia.descripcion);
                pst.setString(3, membresia.costo);
//                SI NO SE AGREGARON BENEFICIOS
                if(membresia.beneficios==null){
                    pst.setString(4, Arrays.toString(membresia.beneficios).replace("null", "No Hay Beneficios Seleccionados"));
                }
//                SI EN CAMBIO SE SE AGREGARON BENEFICIOS
                else{
                pst.setString(4, Arrays.toString(membresia.beneficios).replaceAll("\\[([^\\]]+)\\]", "$1"));
                }
                int i = pst.executeUpdate();     
//                ENVIA MENSAJE DEPENDIENDO SI DE GUARDO O NO
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
//      metodo para editar  registros en la base de datos
        public void edita(Membresias membresia){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
//            UPDATE SQL
            String sql = "UPDATE membresia SET  nombremembresia=?,descripcion=?,costo=?,beneficios=?\n" +
            "WHERE  id_membresia="+membresia.codigo+";";
            String status = "";
//            PREPARANDO SCRIPT PARA EDICION
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, membresia.nombre);
                pst.setString(2, membresia.descripcion);
                pst.setString(3, membresia.costo);
                if(membresia.beneficios==null){
                    pst.setString(4, Arrays.toString(membresia.beneficios).replace("null", "No Hay Beneficios Seleccionados"));
                }
                else{
                pst.setString(4, Arrays.toString(membresia.beneficios).replaceAll("\\[([^\\]]+)\\]", "$1"));
                }      
                int i = pst.executeUpdate();
//                ENVIA MENSAJE DEPENDIENDO SI DE GUARDO O NO             
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
       
//      metodo para eliminar  registros en la base de datos      
      public void elimina(Membresias membresia) throws SQLException{
            //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
//            prepara subida de delete 
            Statement stmt = con.conectar().createStatement();
            stmt.execute("DELETE FROM membresia WHERE id_membresia="+membresia.codigo+";"); 
            
            
       }
    
    
    
    
}
