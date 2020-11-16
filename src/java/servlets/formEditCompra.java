/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import conexion.ConexionJDBC;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel Cotto
 */
@WebServlet(name = "formEditaCompra", urlPatterns = {"/formEditaCompra"})
public class formEditCompra extends HttpServlet {
    
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
             modelo.compras compra = new modelo.compras();
         //almacenando datos en las variables con el constructor   
            compra.setCodigo(Integer.parseInt(Id));
            compra.setNombre(nombre);
            compra.setDescripcion(descripcion);
            compra.setCantidad(Integer.parseInt(cantidad));
            compra.setPrecio(Double.parseDouble(precio));
            compra.setPago(Integer.parseInt(pago));
            //creando objeto para guardar cliente
            modelo.addCompra editaCompra = new modelo.addCompra();
        try {
            editaCompra.edita(compra);
        } catch (SQLException ex) {
            Logger.getLogger(formEditCompra.class.getName()).log(Level.SEVERE, null, ex);
        }
                response.sendRedirect("compras");//si se guarda exitosamente se redirecciona a membresia
    }
    }

