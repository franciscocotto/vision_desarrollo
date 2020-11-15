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
@WebServlet(name = "formDeuda", urlPatterns = {"/formDeuda"})
public class formDeuda extends HttpServlet {
    
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
             String abono1 = request.getParameter("abono1");
             String abono = request.getParameter("abono");
             String deuda = request.getParameter("deuda");
      
         //creando objeto del costructor
            modelo.compras compra = new modelo.compras();
         //almacenando datos en las variables con el constructor   
            Double j = (Double.parseDouble(abono1)+ Double.parseDouble(abono));
            compra.setCodigo(Integer.parseInt(Id));
            compra.setAbono(j);
            compra.setPrecio(Double.parseDouble(precio));
            compra.setDescuento(Double.parseDouble(abono));
            compra.setTotal(Double.parseDouble(deuda));
          
            //creando objeto para guardar cliente
            modelo.addCompra editaDeuda = new modelo.addCompra();
            editaDeuda.edita_deuda(compra);
            response.sendRedirect("deudas");//si se guarda exitosamente se redirecciona a membresia
    }


}
