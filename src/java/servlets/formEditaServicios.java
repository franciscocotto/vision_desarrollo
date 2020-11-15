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
@WebServlet(name = "formEditaServicios", urlPatterns = {"/formEditaServicios"})
public class formEditaServicios extends HttpServlet {
    
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
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");
            String ingreso = request.getParameter("fechaingreso");
      
         //creando objeto del costructor
            modelo.servicios servicio = new modelo.servicios();
         //almacenando datos en las variables con el constructor 
            servicio.setCodigo(Integer.parseInt(Id));
            servicio.setDescripcion(descripcion);
            servicio.setPrecio(Double.parseDouble(precio));
            servicio.setFecha(ingreso);
          
            //creando objeto para guardar cliente
            modelo.addServicio editaservicio = new modelo.addServicio();
            editaservicio.edita(servicio);
            response.sendRedirect("servicios");//si se guarda exitosamente se redirecciona a membresia
    }


}
