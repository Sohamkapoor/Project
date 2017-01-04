/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adv_salary;

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
public class Adv_salary extends HttpServlet {

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
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        /*  out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet Adv_salary</title>");            
         out.println("</head>");
         out.println("<body>");
         out.println("<h1>Servlet Adv_salary at " + request.getContextPath() + "</h1>");
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
            String nameoe="",phno="",advamt="";
            nameoe = request.getParameter("form-adv");
            phno = request.getParameter("form-phno");
            advamt = request.getParameter("form-advamt");
            System.out.println("adv amt="+advamt);
            String sql = "", na = "", ph = "", sa = "";
            int sal=0;
            sql = "insert into adv_salary(nameoe,phno,advamt,date)values('" + nameoe + "','" + phno + "','" + advamt + "','" + date + "')";
            db.conn.createStatement();
            db.st.executeUpdate(sql);

            sql = "select salary from employee";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                sa = db.rs.getString("salary");
            }
            System.out.println("sa ="+sa);
              //  System.out.println("name ="+ nameoe + "na ="+ na);
            //  System.out.println("phno ="+ phno + "ph ="+ ph);
            sal = ((Integer.parseInt(sa)) - (Integer.parseInt(advamt))) ;
            System.out.println("sal ="+sal);
            //    System.out.println("petrol =" + petrol + " " + "vehicleno =" + vehicleno + " " + "pick =" + pick + " " + "drop =" + drop + "repairing =" + repairing);
            sql = "update employee set salary ='" + sal + "' where name='" + nameoe + "' and phno ='" + phno + "'";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            /*,snak="",ban="",name="",adv="",ext="",count="",amtadv="",pet="",vehno="",pic="",dro="",repair="",sa="",ph="",na="";
             int counter=0,counter1=0;
            
             sql="select * from vehicle where date ='"+date+"'";
             db.rs = db.st.executeQuery(sql);
             while(db.rs.next()){
             String count1 = db.rs.getString("date");
             pet = db.rs.getString("petrol");
             if(pet.equals("")){pet="0";}
             System.out.println("Petrol ="+pet);
             vehno = db.rs.getString("vehicleno");           
             if(vehno.equals("")){vehno="0";}
             System.out.println("vehicle no ="+vehno);
             pic= db.rs.getString("pick");           
             if(pic.equals("")){pic="0";}
             System.out.println("pic ="+pic);
             dro = db.rs.getString("dropkm");
             if(dro.equals("")){dro="0";}
             System.out.println("drop ="+dro);
             repair = db.rs.getString("repairing");
             if(repair.equals("")){repair="0";}
             System.out.println("repair ="+repair);
             counter1++;
             }
             if(counter1==0){
             sql="insert into vehicle(petrol,vehicleno,pick,dropkm,repairing,date)values('"+petrol+"','"+vehicleno+"','"+pick+"','"+drop+"','"+repairing+"','"+date+"')";
             db.conn.createStatement();
             db.st.executeUpdate(sql);
             }
             else if(counter1>0)
             {
             int pe=0,veh=0,petro=0,dr=0,rep=0;
             petro= Integer.parseInt(petrol) + Integer.parseInt(pet);
             pe = Integer.parseInt(pick) + Integer.parseInt(pic);
             dr = Integer.parseInt(drop) + Integer.parseInt(dro);
             rep = Integer.parseInt(repairing) + Integer.parseInt(repair);
                
             if(vehicleno.equals(vehno))
             {
             sql= "update vehicle set petrol ='"+petro+"', pick='"+pe+"', dropkm='"+dr+"',repairing ='"+rep+"' where date='"+date+"' and vehicleno ='"+vehicleno+"'";
             db.conn.createStatement();
             db.st.executeUpdate(sql);
             }
             else{
             sql="insert into vehicle(petrol,vehicleno,pick,dropkm,repairing,date)values('"+petro+"','"+vehno+"','"+pe+"','"+dr+"','"+repair+"','"+date+"')";
             db.conn.createStatement();
             db.st.executeUpdate(sql);
             }
             }*/

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
