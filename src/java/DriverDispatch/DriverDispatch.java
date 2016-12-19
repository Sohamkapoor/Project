/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DriverDispatch;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class DriverDispatch extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet DriverDispatch</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet DriverDispatch at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
          String name="",drivername="",defective="",filledgodown="",emptygodown="",sql="",fillednondomestic="",emptynondomestic="";
          name= request.getParameter("form-customer-name");
          drivername= request.getParameter("form-driver-name");
          defective = request.getParameter("form-defective");
          filledgodown = request.getParameter("form-filled-domestic-godown");
          fillednondomestic = request.getParameter("form-filled-nondomestic-godown");
          emptygodown = request.getParameter("form-empty-domestic-godown");
          emptynondomestic = request.getParameter("form-empty-nondomestic-godown");
          Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(cal.getTime());
            System.out.println("Current date in String Format: " + strDate);
            SimpleDateFormat sdf1 = new SimpleDateFormat();
            sdf1.applyPattern("dd/MM/yyyy");
            Date date = sdf1.parse(strDate);
          sql="insert into dispatchdriver(drivername,customername,defective,filledgodown,fillednondomestic,emptygodown,emptynondomestic,day)values('"+drivername+"','"+name+"','"+defective+"','"+filledgodown+"','"+fillednondomestic+"','"+emptygodown+"','"+emptynondomestic+"','"+date+"')";
          db.conn.createStatement();
          db.st.executeUpdate(sql);
         }catch(Exception e)
         {
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
