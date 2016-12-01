/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Miscellaneous_vehicle;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class Miscellaneous_vehicle extends HttpServlet {

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
        // try (PrintWriter out = response.getWriter()) {
        /* TODO output your page here. You may use following sample code. */
 /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Miscellaneous_vehicle</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Miscellaneous_vehicle at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(cal.getTime());
            System.out.println("Current date in String Format: " + strDate);
            SimpleDateFormat sdf1 = new SimpleDateFormat();
            sdf1.applyPattern("dd/MM/yyyy");
            Date date = sdf1.parse(strDate);

            ArrayList<Integer> petrolPrice = new ArrayList<Integer>();
            ArrayList<String> vehicleno = new ArrayList<String>();
            ArrayList<String> driverName = new ArrayList<String>();
            ArrayList<Integer> pick_Up_Km = new ArrayList<Integer>();
            ArrayList<Integer> drop_Km = new ArrayList<Integer>();
            ArrayList<Integer> repairCharges = new ArrayList<Integer>();
            int retriveCounter = Integer.parseInt(request.getParameter("counter").trim());
            int count = 0;
            String sql = "", pri = "", vehicle = "", drive = "", pic = "", dro = "", rep = "";
            for (count = 0; count < retriveCounter; count++) {
                pri = request.getParameter("petrol" + count).trim();

                if (pri.equals("")) {
                    petrolPrice.add(0);
                } else {
                    petrolPrice.add(Integer.parseInt(pri));
                }

                vehicle = request.getParameter("vehicleno" + count).trim();
                if (vehicle.equals("")) {
                    vehicleno.add("XYZ123");
                } else {
                    vehicleno.add(vehicle);
                }

                drive = request.getParameter("driver" + count).trim();
                if (drive.equals("")) {
                    driverName.add("NA");;
                } else {
                    driverName.add(drive);
                }

                pic = request.getParameter("pick" + count).trim();
                if (pic.equals("")) {
                    pick_Up_Km.add(0);
                } else {
                    pick_Up_Km.add(Integer.parseInt(pic));
                }

                dro = request.getParameter("drop" + count).trim();
                if (dro.equals("")) {
                    drop_Km.add(0);
                } else {
                    drop_Km.add(Integer.parseInt(dro));
                }

                rep = request.getParameter("repair" + count).trim();
                if (rep.equals("")) {
                    repairCharges.add(0);
                } else {
                    repairCharges.add(Integer.parseInt(rep));
                }
            }
            for (count = 0; count < retriveCounter; count++) {
                sql = "insert into vehicle (petrol,vehicleno,driver,pick,dropkm,repairing,date) values ('" + petrolPrice.get(count) + "','" + vehicleno.get(count) + "','" + driverName.get(count) + "','" + pick_Up_Km.get(count) + "','" + drop_Km.get(count) + "','" + repairCharges.get(count) + "','" + date + "')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
            }
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
