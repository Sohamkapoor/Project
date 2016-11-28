/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Attendance;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class Attendance extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /*   out.println("<!DOCTYPE html>");
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet Attendance</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet Attendance at " + request.getContextPath() + "</h1>");
             out.println("</body>");
             out.println("</html>");*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            Datab db = new Datab();
            
            ArrayList<String> emp = new ArrayList<String>();
            String sql = "select name from employee";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                emp.add(db.rs.getString("name"));
            }
            for(String em:emp) {
            String name = request.getParameter(em+"name");
            System.out.println("name ="+name);
            String date = request.getParameter("datepicker");
            String attendance = request.getParameter(em+"attendance");
            sql = "insert into attendance (name,date,attendance)values('" + name + "','" + date + "','" + attendance + "')"; 
            System.out.println("sq"+sql);
            db.conn.createStatement();           
            db.st.executeUpdate(sql);
            }
            System.out.println("row inserted");
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Attendance</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1> Attendance Posted </h1>");
//            out.println("</body>");
//            out.println("</html>");
        
      
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
