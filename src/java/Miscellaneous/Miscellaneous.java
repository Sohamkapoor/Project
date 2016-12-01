/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Miscellaneous;

import Datab.Datab;
import static com.sun.xml.bind.util.CalendarConv.formatter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
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
public class Miscellaneous extends HttpServlet {

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
        /*    out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet Miscellaneous</title>");            
         out.println("</head>");
         out.println("<body>");
         out.println("<h1>Servlet Miscellaneous at " + request.getContextPath() + "</h1>");
         out.println("</body>");
         out.println("</html>");
         } */
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
            String snacks = request.getParameter("form-tea");
            if(snacks.equals("")){snacks="0";}               
            
            
            String bank = request.getParameter("form-bank");
            if(bank.equals("")){bank="0";}
            String extra = request.getParameter("form-extra");
            if(extra.equals("")){extra="0";}
            
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(cal.getTime());
            System.out.println("Current date in String Format: " + strDate);

            SimpleDateFormat sdf1 = new SimpleDateFormat();
            sdf1.applyPattern("dd/MM/yyyy");
            Date date = sdf1.parse(strDate);
            
            
            String sql="",snak="",ban="",name="",adv="",ext="",count="",amtadv="",pet="",vehno="",pic="",dro="",repair="",sa="",ph="",na="";
            int counter=0,counter1=0;
           // sql="select count(*) from (select count(date) from miscellaneous where date ='"+date+"')t";
            sql="select * from miscellaneous where date ='"+date+"'";
            db.rs = db.st.executeQuery(sql);
            while(db.rs.next()){
            count = db.rs.getString("date");
            if(count.equals("")){count="0";}                
            snak = db.rs.getString("snacks");
            if(snak.equals("")){snak="0";}
            ban= db.rs.getString("bank");
            if(ban.equals("")){ban="0";}
            ext=db.rs.getString("extra");
            if(ext.equals("")){ext="0";}
//            name =db.rs.getString("name_of_emp");
            counter++;
            }
            if(counter==0)
            {
                sql="insert into miscellaneous(snacks,bank,extra,date)values('"+snacks+"','"+bank+"','"+extra+"','"+date+"')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
            }
            else if(counter>0)
            {
                int ba = Integer.parseInt(bank)+Integer.parseInt(ban);
                int sna = Integer.parseInt(snacks)+Integer.parseInt(snak);
                int ex = Integer.parseInt(extra) + Integer.parseInt(ext);
                System.out.println(ba+" "+ sna+" "+ex);
                sql="update miscellaneous set snacks ='"+sna+"' , bank = '"+ba+"' , extra='"+ex+"'  where date = '"+date+"'";
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
