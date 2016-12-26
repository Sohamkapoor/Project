/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Stove;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class Stove extends HttpServlet {

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
//            out.println("<title>Servlet Stove</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Stove at " + request.getContextPath() + "</h1>");
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
//          int stove1975=0,stove1990=0,pr=0,pipe15=0,cy=0,dairy=0,counter1=0,counter2=0,counter3=0,counter4=0;
          String stove197="",stove199="",pr1="",pipe="",cv="",dairy1="",count1="",count2="",count3="",count4="",type="";
          type= request.getParameter("type");
          if(type.equals("sell"))
          {
              stove197 = request.getParameter("stove197");
              stove199 = request.getParameter("stove199");
              pr1 = request.getParameter("prsell");
              pipe = request.getParameter("pipe1.5");
              cv = request.getParameter("cysell");
              dairy1 = request.getParameter("dairysell");
              count1 = request.getParameter("counter11");
              count2 = request.getParameter("counter12");
              count3 = request.getParameter("counter13");
              count4 = request.getParameter("counter14");
          }
          if(type.equals("godown"))
          {
              stove197 = request.getParameter("stove1975");
              stove199 = request.getParameter("stove1990");
              pr1 = request.getParameter("pr");
              pipe = request.getParameter("1.5pipe");
              cv = request.getParameter("cy");
              dairy1 = request.getParameter("dairy");
              count1 = request.getParameter("counter1");
              count2 = request.getParameter("counter2");
              count3 = request.getParameter("counter3");
              count4 = request.getParameter("counter4");             
          }
        }catch(Exception e)
        {e.printStackTrace();}
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
