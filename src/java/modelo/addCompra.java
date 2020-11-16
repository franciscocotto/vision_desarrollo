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
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.swing.JOptionPane; // import javax packages



public class addCompra {
    Double deuda, existencia, res;
       //metodo para agregar registros en la base de datos  
       public void agrega(compras compra){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            String sql2="SELECT SUM(debe) AS deuda, SUM(haber) AS existencia FROM cuenta_caja"; 
  
                       
                try(Statement st3 = con.conectar().createStatement();){
                      ResultSet resultado=st3.executeQuery(sql2);  //resultset %> 
                      while (resultado.next()){
                        deuda = Double.parseDouble(resultado.getString("deuda"));
                        existencia = Double.parseDouble(resultado.getString("existencia"));
                      }
                     res = deuda - existencia;
                   } catch (SQLException ex) {//captura error de existir alguno.
                    System.out.println("error: "+ex );
                }
                
           if(compra.precio > res){


           } else{
            //INSERT SQL
            String sql = "CALL ingreso_compras(?,?,?,?,?,?)";
            String status = "";
            //insert into compras(1 nombre,2 descripcion,3 cantidad,4 precio,5 forma_de_pago,6 estado,7 abono,8 total_deuda)
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, compra.nombre);
                pst.setString(2, compra.descripcion);
                pst.setInt(3, compra.cantidad);
                pst.setDouble(4, compra.precio);
                pst.setInt(5, compra.pago); 
                pst.setInt(6, compra.pago);
                /*if(compra.pago==1){
                double value = 0.0;
                 pst.setDouble(7, compra.precio);
                 pst.setDouble(8, value);               
                }else{
                double value = 0.0;
                 pst.setDouble(7, value);
                 pst.setDouble(8, compra.precio);
                    
                    }*/
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
       }
       //metodo para editar  registros en la base de datos
         public void edita(compras compra){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "CALL actualizar_compras(?,?,?,?,?,?,?,?,?)";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, compra.nombre);
                pst.setString(2, compra.descripcion);
                pst.setInt(3, compra.cantidad);
                pst.setDouble(4, compra.precio);
                pst.setInt(5, compra.pago);   
                pst.setInt(6, compra.pago);
                if(compra.abono==null){
                    compra.abono = 0.0;
                }
                if(compra.total==null){
                    compra.total = 0.0;
                }
                pst.setDouble(7, compra.abono);
                pst.setDouble(8, compra.total);
                pst.setInt(9,compra.codigo); 
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
         
         //metodo para editar  deuda
         public void edita_deuda(compras compra){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
  
            String sql = "CALL abono_compra(?,?)";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setInt(1,compra.codigo);
                pst.setDouble(2,compra.descuento);            
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
       public void elimina(compras compra) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            /*stmt.execute( "DELETE FROM compras\n" +
           "WHERE  id_compras="+compra.codigo+";");*/
            stmt.execute("CALL eliminar_compra("+compra.codigo+")");
            
       }

        

   
 }

    
    

