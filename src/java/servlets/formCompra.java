/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "formCompra", urlPatterns = {"/formCompra"})
public class formCompra extends HttpServlet {
    
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
        //capturando valores del form
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            String cantidad = request.getParameter("cantidad");
            String precio = request.getParameter("precio");
            String pago = request.getParameter("pago");
      
         //creando objeto del costructor
            modelo.compras compra = new modelo.compras();
         //almacenando datos en las variables con el constructor   
            compra.setNombre(nombre);
            compra.setDescripcion(descripcion);
            compra.setCantidad(Integer.parseInt(cantidad));
            compra.setPrecio(Double.parseDouble(precio));
            compra.setPago(Integer.parseInt(pago));
          
            //creando objeto para guardar cliente
            modelo.addCompra addcompra = new modelo.addCompra();
        try {
            addcompra.agrega(compra);
        } catch (SQLException ex) {
            Logger.getLogger(formCompra.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(compra.respuesta.equals(1)){
            response.sendRedirect("compras");
                    // below code parse json receive ajax call     jsonobject jsonobj = (jsonobject) jsonvalue.parse(request.getparameter("para"));     system.out.println(jsonobj.get("message"));     jsonobject obj = new jsonobject();     obj.put("address", "address of users");     out.print(obj); 
        }
        else{
            response.sendRedirect("compras");//si se guarda exitosamente se redirecciona a membresia
            }
    }


}
