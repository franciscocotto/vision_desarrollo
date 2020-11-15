package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConexionJDBC {
    //variables de conexion
    Connection conexion = null;
    //nombre base de datos
    String db= "db_vision_financiero";
    String host = "localhost";
    //puerto por defecto
    String port = "3306";
    //usuario
    String user  = "root";
    //variable de password cambiar si en el postgres se tiene otro password sino no conectara
    String pass = "";
    
    //driver
    String  driverDb = "com.mysql.jdbc.Driver";
    String url="jdbc:mysql://"+host+":"+port+"/"+db+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    //metodo para conectar a la base de datos
    public Connection conectar(){
        try{
            Class.forName(driverDb);
             conexion = DriverManager.getConnection(url, user, pass);
             if(!conexion.isClosed()){
                 //si se conecto muestra mensaje
                 System.out.println("Exito Conexion");               
             }
             return conexion;
        } catch (ClassNotFoundException | SQLException ex){ //si no se conecto muestra captura exepcion
            Logger.getLogger(ConexionJDBC.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } 
        
    }
    //metodo getter usado en el sistema de conexion
    public Connection getConexion(){
        return conexion;
    }
    
}

