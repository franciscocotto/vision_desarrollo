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
@WebServlet(name = "deleteMembresia", urlPatterns = {"/deleteMembresia"})
public class deleteMembresia extends HttpServlet {

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
        //capturo datos del formulario de alerta para eliminar solo tomamos el codigo pues con 
        //eso de hace la consulta
             String Id = request.getParameter("codigo");
             //creando constructor
             modelo.Membresias membresia = new modelo.Membresias();
             membresia.setCodigo(Integer.parseInt(Id));//se cambia el tipo de variable por int desde string
              //objeto para borrar cliente
            modelo.addMembresias borrarMembresia = new modelo.addMembresias();
            String myCustomMsg="";
        try {
            borrarMembresia.elimina(membresia);//envia objeto a addMembresias.
        } catch (SQLException ex) {//captura error de existir
          response.sendRedirect("error.jsp");//se redirecciona al jsp de error.
          return;
        }
        
           response.sendRedirect("membresias.jsp");//se redirecciona al membresias.jsp una vez terminado el eliminado de registros
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
