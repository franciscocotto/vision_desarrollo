/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {

public static Connection createConnection()
{
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
    //String url="jdbc:mysql://" + host + ":" + port + "/" +db;
    String url="jdbc:mysql://"+host+":"+port+"/"+db+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
try
{
try
{
Class.forName(driverDb);
}
catch (ClassNotFoundException e)
{
e.printStackTrace();
}
conexion = DriverManager.getConnection(url, user, pass);
System.out.println("Post establishing a DB connection - "+ conexion);
}
catch (Exception e)
{
e.printStackTrace();
}
 
return conexion;
}
}
