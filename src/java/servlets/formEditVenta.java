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
@WebServlet(name = "formEditaVenta", urlPatterns = {"/formEditaVenta"})
public class formEditVenta extends HttpServlet {
    
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
            String descripcion = request.getParameter("descripcion");
            String cantidad = request.getParameter("cantidad");
            String precio = request.getParameter("precio");
            String pago = request.getParameter("pago");
            
 //creando objeto del costructor
             modelo.ventas venta = new modelo.ventas();
         //almacenando datos en las variables con el constructor   
            venta.setCodigo(Integer.parseInt(Id));
            venta.setNombre(nombre);
            venta.setDescripcion(descripcion);
            venta.setCantidad(Integer.parseInt(cantidad));
            venta.setPrecio(Double.parseDouble(precio));
            venta.setPago(Integer.parseInt(pago));
            //creando objeto para guardar cliente
            modelo.addVenta editaVenta = new modelo.addVenta();
            editaVenta.edita(venta);
                response.sendRedirect("ventas");//si se guarda exitosamente se redirecciona a membresia
    }
    }

