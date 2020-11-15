/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel Cotto
 */
@WebServlet(name = "formCobro", urlPatterns = {"/formCobro"})
public class formCobro extends HttpServlet {
    
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
             String Id = request.getParameter("codigo");   
             String precio = request.getParameter("precio");
             String cobro1 = request.getParameter("abono1");
             String cobro = request.getParameter("abono");
             String deuda = request.getParameter("deuda");
      
         //creando objeto del costructor
            modelo.ventas venta = new modelo.ventas();
         //almacenando datos en las variables con el constructor   
            Double j = (Double.parseDouble(cobro1)+ Double.parseDouble(cobro));
            venta.setCodigo(Integer.parseInt(Id));
            venta.setAbono(j);
            venta.setPrecio(Double.parseDouble(precio));
            venta.setDescuento(Double.parseDouble(cobro));
            venta.setTotal(Double.parseDouble(deuda));
          
            //creando objeto para guardar cliente
            modelo.addVenta editaDeuda = new modelo.addVenta();
            editaDeuda.edita_deuda(venta);
            response.sendRedirect("cobros");//si se guarda exitosamente se redirecciona a membresia
    }


}
