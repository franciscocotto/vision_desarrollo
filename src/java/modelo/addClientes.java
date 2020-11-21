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



public class addClientes {
       //metodo para agregar registros en la base de datos  
       public void agrega(Cliente cliente){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //INSERT SQL
            String sql = "INSERT INTO cliente (nombre,apellidos,dui,nit,sexo,edad,fechaingreso,membresia)"+"VALUES(?,?,?,?,?,?,?,?)";
            String status = "";
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, cliente.nombre);
                pst.setString(2, cliente.apellido);
                pst.setString(3, cliente.dui);
                pst.setString(4, cliente.nit);
                pst.setString(5, cliente.sexo);
                pst.setInt(6, cliente.edad);
                pst.setString(7, cliente.ingreso);
                pst.setInt(8, cliente.membresia);
//                pst.setInt(9, cliente.peso);
//                pst.setInt(10, cliente.estatura);
//                pst.setDouble(11, cliente.imc);
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
         public void edita(Cliente cliente){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "UPDATE cliente\n" +
            "SET  nombre=?, apellidos=?, dui=?, nit=?, sexo=?, edad=?, fechaingreso=?, membresia=?\n" +
            "WHERE  id_campo="+cliente.codigo+";";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, cliente.nombre);
                pst.setString(2, cliente.apellido);
                pst.setString(3, cliente.dui);
                pst.setString(4, cliente.nit);
                pst.setString(5, cliente.sexo);
                pst.setInt(6, cliente.edad);
                pst.setString(7, cliente.ingreso);
                pst.setInt(8, cliente.membresia);
//                pst.setInt(9, cliente.peso);
//                pst.setInt(10, cliente.estatura);
//                pst.setDouble(11, cliente.imc);
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
       public void elimina(Cliente cliente) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            stmt.execute( "DELETE FROM cliente\n" +
           "WHERE  id_campo="+cliente.codigo+";");             
            
       }
     // metodo para mostrar  registros en combobox de agregar clientes      
      public ResultSet mostrar() throws SQLException{
          //conexion a base de datos
           ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //script de consulta 
             String combo="SELECT id_membresia,nombremembresia from membresia ORDER BY id_membresia";   
              //prepara subida de delete 
              Statement st = con.conectar().createStatement();
                   ResultSet r=st.executeQuery(combo);       
                return r;  
      }
        

   
 }

    
    

