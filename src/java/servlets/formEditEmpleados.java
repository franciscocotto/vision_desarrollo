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
@WebServlet(name = "formEditaEmpleado", urlPatterns = {"/formEditaEmpleado"})
public class formEditEmpleados extends HttpServlet {
    
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
            String apellido = request.getParameter("apellido");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String dui = request.getParameter("dui");
            String nit = request.getParameter("nit");
            String nip = request.getParameter("nip");
            String isss = request.getParameter("isss");
            String salario = request.getParameter("salario");
            String email = request.getParameter("email");
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            
 //creando objeto del costructor
            modelo.empleado empleado = new modelo.empleado();
         //almacenando datos en las variables con el constructor   
            empleado.setCodigo(Integer.parseInt(Id));
            empleado.setNombre(nombre);
            empleado.setApellido(apellido);
            empleado.setDireccion(direccion);
            empleado.setTelefono(telefono);
            empleado.setDui(dui);
            empleado.setNit(nit);
            empleado.setNip(nip);
            empleado.setIsss(isss);
            empleado.setSalario(Double.parseDouble(salario));
            empleado.setEmail(email);
            empleado.setUser(user);
            empleado.setPassword(password);
            empleado.setRole(role);
            //creando objeto para guardar cliente
            modelo.addEmpleado editaEmpleado = new modelo.addEmpleado();
            editaEmpleado.edita(empleado);
            response.sendRedirect("empleados");//si se guarda exitosamente se redirecciona a membresia
    }
    }

