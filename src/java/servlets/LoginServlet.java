/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import login.bean.LoginBean;
import login.dao.LoginDao;
@WebServlet(name="LoginServlet" , urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginServlet() {
    }

    protected void doGet(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
         Integer valor = (Integer)getServletContext().getAttribute("admin");
   if( valor == 1){
          RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin.jsp");
          dispatcher.forward(request, response);
   }else{
         RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/user.jsp");
          dispatcher.forward(request, response);
   }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUserName(userName);
        loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();
        try {
            String userValidate = loginDao.authenticateUser(loginBean);
            if (userValidate.equals("Admin_Role")) {
                System.out.println("Admin's Home");
                HttpSession session = request.getSession(); //Creating a session
                session.setAttribute("Admin", userName); //setting session attribute
                request.setAttribute("userName", userName);
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            } else if (userValidate.equals("Editor_Role")) {
                System.out.println("Editor's Home");
                HttpSession session = request.getSession();
                session.setAttribute("Editor", userName);
                request.setAttribute("userName", userName);
                request.getRequestDispatcher("editor.jsp").forward(request, response);
            } else if (userValidate.equals("User_Role")) {
                System.out.println("User's Home");
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(10 * 60);
                session.setAttribute("User", userName);
                request.setAttribute("userName", userName);
                request.getRequestDispatcher("user.jsp").forward(request, response);
            } else {
                System.out.println("Error message = " + userValidate);
                request.setAttribute("errMessage", userValidate);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (IOException e1) {
            e1.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    } //End of doPost()
}
