/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import conexion.ConexionJDBC;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel Cotto
 */
@WebServlet(name = "formEditClientes", urlPatterns = {"/formEditClientes"})
public class formEditClientes extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                  
  
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        capturando valores del form
            String Id = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellidos");
            String dui = request.getParameter("dui");
            String nit = request.getParameter("nit");
            String edad = request.getParameter("edad");
            String sexo = request.getParameter("sexo");
            String peso = request.getParameter("peso");
            String estatura = request.getParameter("estatura");
            String imc = request.getParameter("imc");
            String ingreso = request.getParameter("fechaingreso");           
            String membresia = request.getParameter("membresia");
            
   //            creando objeto del costructor          
            modelo.Cliente cliente = new modelo.Cliente();
            cliente.setCodigo(Integer.parseInt(Id));
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setSexo(sexo);
            cliente.setEdad(Integer.parseInt(edad));
            cliente.setDui(dui);
            cliente.setNit(nit);
            cliente.setIngreso(ingreso);
            cliente.setMembresia(Integer.parseInt(membresia));
            cliente.setPeso(Integer.parseInt(peso));
            cliente.setEstatura(Integer.parseInt(estatura));
            cliente.setImc(Double.parseDouble(imc));
           //cambio de tipo de variable
          //almacenando datos en las variables con el constructor   
            modelo.addClientes editaCliente = new modelo.addClientes();
            editaCliente.edita(cliente);
            //coneccion a la base de datos
            ConexionJDBC con = new ConexionJDBC();
            Connection  cn = con.conectar();  
            response.sendRedirect("LoginServlet");//si se edita exitosamente se redirecciona a index
    }
    }

