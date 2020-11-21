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



public class addVenta {
     Double deuda, existencia, res;
       //metodo para agregar registros en la base de datos  
       public void agrega(ventas venta) throws SQLException{
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
             String sql2="SELECT SUM(debe) AS deuda, SUM(haber) AS existencia FROM cuenta_inventario"; 
   
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
             if(venta.precio > res){
                ventas.setRespuesta(1);
                con.conectar().close();
           } else{
            
            //INSERT SQL
            //String sql = "INSERT INTO ventas (nombre,descripcion,cantidad,precio,forma_de_pago,estado,abono,total_pago)"+"VALUES(?,?,?,?,?,?,?,?)";
            String status = "";
            String sql = "call ingreso_ventas(?,?,?,?,?,?)";
            
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, venta.nombre);
                pst.setString(2, venta.descripcion);
                pst.setInt(3, venta.cantidad);
                pst.setDouble(4, venta.precio);
                pst.setInt(5, venta.pago); 
                pst.setInt(6, venta.pago);

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
         public void edita(ventas venta) throws SQLException{
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
                         String sql2="SELECT SUM(debe) AS deuda, SUM(haber) AS existencia FROM cuenta_inventario"; 
   
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
             if(venta.precio > res){
                ventas.setRespuesta(1);
                con.conectar().close();
           } else{
            
            //UPDATE SQL
            String sql = "call actualizar_ventas(?,?,?,?,?,?,?,?,?)";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, venta.nombre);
                pst.setString(2, venta.descripcion);
                pst.setInt(3, venta.cantidad);
                pst.setDouble(4, venta.precio);
                pst.setInt(5, venta.pago);   
                pst.setInt(6, venta.pago);
                if(venta.abono==null){
                    venta.abono = 0.0;
                }
                if(venta.total==null){
                    venta.total = 0.0;
                }
                pst.setDouble(7, venta.abono);
                pst.setDouble(8, venta.total);
                pst.setInt(9, venta.codigo);
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
            
       }
         
         //metodo para editar  deuda
         public void edita_deuda(ventas venta){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            /*String sql = "UPDATE ventas\n" +
            "SET  forma_de_pago=?, estado=?, abono=?, total_pago=?\n" +
            "WHERE  id_ventas="+venta.codigo+";";*/
            String sql = "call abono_venta(?,?)";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
               pst.setInt(1, venta.codigo);
               pst.setDouble(2, venta.descuento);
                /*double k = (venta.total - venta.descuento);
               Double j = venta.abono;
               if(k == 0 || k < 0){
                 pst.setDouble(1, 1);
                 pst.setDouble(2, 1);
                 pst.setDouble(3, venta.abono);
                 pst.setDouble(4, 0);                         
               }
               if(k == 0 || k < 0 && j > venta.precio ){
                 pst.setDouble(1, 1);
                 pst.setDouble(2, 1);
                 pst.setDouble(3, venta.precio);
                 pst.setDouble(4, 0);                         
               }              
               else{
               pst.setDouble(1, 2);
               pst.setDouble(2, 2);
               pst.setDouble(3, venta.abono);
               pst.setDouble(4, k);
                }*/               
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
       public void elimina(ventas venta) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            stmt.execute("call eliminar_venta("+venta.codigo+")");             
            
       }

        

   
 }

    
    

