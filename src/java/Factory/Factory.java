/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Factory;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
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
public class Factory extends HttpServlet {

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
//            out.println("<title>Servlet Factory</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Factory at " + request.getContextPath() + "</h1>");
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
//            domestic = request.getParameter("form-domestic");
//            nondomestic = request.getParameter("form-nondomestic");
//            returnnondomestic = request.getParameter("form-2nondomestic");
//            returndomestic = request.getParameter("form-2domestic");
//            if(domestic.equals("")){domestic = "0";}
//            if(nondomestic.equals("")){nondomestic = "0";}
//            if(returndomestic.equals("")){returndomestic="0";}
//            if(returnnondomestic.equals("")){returnnondomestic="0";}
            String name="",fourteen="",nineteen="",five="",defective="",type="",fourteen_price="",nineteen_price="",five_price="",fourteenws_price="",sono="",driverno="";
            String returndefective ="" ,sql="",returnfourteenempty ="" ,returnnineteenempty="" ,returnfiveempty ="",fourteenws="",returnfourteenwsempty="",truckno="";
            int four=0,nine=0,f5=0,defect=0,returnfour=0,returnnine=0,returnf5=0,returndefect=0,fourws=0,returnfourws=0;
            Datab db =new Datab();
            name= request.getParameter("form-driver-name");
            sono = request.getParameter("form-sono");
            driverno = request.getParameter("form-driver-no");
            truckno = request.getParameter("form-truck-no");
            fourteen = request.getParameter("form-fourteen");
            fourteenws = request.getParameter("form-fourteen-wsubsidy");
            nineteen = request.getParameter("form-nineteen");
            five = request.getParameter("form-five");
//            enter cylinder price over here
            fourteen_price = request.getParameter("form-fourteen-price");
            fourteenws_price = request.getParameter("form-fourteen-wprice");
            nineteen_price = request.getParameter("form-nineteen-price");
            five_price = request.getParameter("form-five-price");
            defective = request.getParameter("form-defective");
            // type 1 over below is return cylinder details
            type = request.getParameter("form-type");
            returnfourteenempty = request.getParameter("form-2domesticempty");
            returnfourteenwsempty = request.getParameter("form-2domesticwsempty");
            returnnineteenempty = request.getParameter("form-2nondomesticempty");
            returnfiveempty = request.getParameter("form-2five");            
            returndefective = request.getParameter("form-2defective");
//          setting values to 0
            if(defective.equals("")){defective="0";}
            if(fourteen_price.equals("")){fourteen_price="0";}
            if(fourteenws_price.equals("")){fourteenws_price="0";}
            if(nineteen_price.equals("")){nineteen_price="0";}
            if(five_price.equals("")){five_price="0";}
            if(fourteen.equals("")){fourteen="0";}
            if(fourteenws.equals("")){fourteenws="0";}
            if(nineteen.equals("")){nineteen="0";}
            if(five.equals("")){five="0";}
            if(returndefective.equals("")){returndefective="0";}
            if(returnfourteenempty.equals("")){returnfourteenempty="0";}
            if(returnfourteenwsempty.equals("")){returnfourteenwsempty="0";}
            if(returnnineteenempty.equals("")){returnnineteenempty="0";}
            if(returnfiveempty.equals("")){returnfiveempty="0";}
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            Date today = new Date();
            String tod=formatter.format(today);
            // select query then take values and append new values to godown table
            sql="select * from godown ";
            db.rs = db.st.executeQuery(sql);
             while (db.rs.next()) {
                 four += db.rs.getInt("filled_fourteen");
                 fourws += db.rs.getInt("filled_fourteenws");
                 nine += db.rs.getInt("filled_nineteen");
                 f5 += db.rs.getInt("filled_five");
                 defect += db.rs.getInt("filled_defective");
                 returnfour += db.rs.getInt("empty_fourteen");
                 returnfourws += db.rs.getInt("empty_fourteenws");
                 returnnine += db.rs.getInt("empty_nineteen");
                 returnf5 += db.rs.getInt("empty_five");
                 returndefect += db.rs.getInt("empty_defective");
             }
             four = four + (Integer.parseInt(fourteen));
             fourws = fourws + (Integer.parseInt(fourteenws));
             nine = nine + (Integer.parseInt(nineteen));
             f5 = f5 + (Integer.parseInt(five));
             defect = defect + (Integer.parseInt(defective));
             returnfour = returnfour - (Integer.parseInt(returnfourteenempty));
             returnfourws = returnfourws - (Integer.parseInt(returnfourteenwsempty));
             returnnine = returnnine - (Integer.parseInt(returnnineteenempty));
             returnf5 = returnf5 - (Integer.parseInt(returnfiveempty));
             returndefect = returndefect - (Integer.parseInt(returndefective));
             if((four>=0)&&(fourws>=0)&&(nine>=0)&&(f5>=0)&&(defect>=0)&&(returnfour>=0)&&(returnfourws>=0)&&(returnnine>=0)&&(returnf5>=0)&&(returndefect>=0))
             {
            // insert factory details date wise
            sql="insert into factory(sono,drivername,truckno,driverno,fourteen,fourteen_price,fourteenws,fourteenws_price,nineteen,nineteen_price,five,five_price,defective,type,returndomesticempty,returndomesticwsempty,returnnondomesticempty,returnfiveempty,returndefective,day)values('"+sono+"','"+name+"','"+truckno+"','"+driverno+"','"+fourteen+"','"+fourteen_price+"','"+fourteenws+"','"+fourteenws_price+"','"+nineteen+"','"+nineteen_price+"','"+five+"','"+five_price+"','"+defective+"','"+type+"','"+returnfourteenempty+"','"+returnfourteenwsempty+"','"+returnnineteenempty+"','"+returnfiveempty+"','"+returndefective+"','"+today+"')";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            
            
            // update godown and make id = 1 forever
            sql = "update godown set filled_fourteen ='"+four+"',filled_fourteenws ='"+fourws+"',filled_nineteen='"+nine+"',filled_five='"+f5+"',filled_defective='"+defect+"',empty_five='"+returnf5+"',empty_fourteen='"+returnfour+"',empty_fourteenws='"+returnfourws+"',empty_nineteen='"+returnnine+"',empty_defective='"+returndefect+"', day='"+today+"' where id ="+1;
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            out.println("<html><head><script>alert('Successful');</script></head><body></body></html>");
            response.setIntHeader("Refresh", 40);
            response.sendRedirect("http://localhost:8080/gas/Factory.jsp");
             }
             else
             {
                 out.print("<html>");
                 out.print("<head>");
                 out.print("<body>");
                 out.print("<h3>Not enough stock left</h3>"); 
                 out.print("</head>");
                 out.print("</body>");
                 out.print("</html>");
             }
//            if(type.equals("one way"))
//            {
//            sql="insert into godown(filled_fourteen,filled_nineteen,filled_five,filled_defective,empty_five,empty_fourteen,empty_nineteen,empty_defective,day)values('"+four+"','"+nineteen+"','"+five+"','"+defective+"','"+val+"','"+val+"','"+val+"','"+val+"','"+date+"')";
//            db.conn.createStatement();
//            db.st.executeUpdate(sql);
//            }
//            else if(type.equals("two way"))
//            {
//            sql="insert into godown(filled_fourteen,filled_nineteen,filled_five,filled_defective,empty_five,empty_fourteen,empty_nineteen,empty_defective,day)values('"+fourteen+"','"+nineteen+"','"+five+"','"+defective+"','"+returnfiveempty+"','"+returnfourteenempty+"','"+returnnineteenempty+"','"+returndefective+"','"+date+"'";
//            db.conn.createStatement();
//            db.st.executeUpdate(sql);
//            }
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
