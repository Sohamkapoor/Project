/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adv_salary;

import Datab.Datab;
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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Adv_salary</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Adv_salary at " + request.getContextPath() + "</h1>");
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
            String nameoe="",phno="",advamt="";
            nameoe = request.getParameter("form-adv");
            phno = request.getParameter("form-phno");
            advamt = request.getParameter("form-advamt");
            System.out.println("adv amt="+advamt);
            String sql = "",sql1="",name="";
            int sal=0,advance=0,salary=0,counter=0,adv=0;
            
            sql=" select salary from employee where name ='"+nameoe+"' and phno ='"+phno+"' ";
            System.out.println(sql);
            db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    sal = db.rs.getInt("salary");
                }
            advance = sal-(Integer.parseInt(advamt));
            
            if(advance>=0){    
                sql1 = "update employee set salary ='"+advance+"' where name='"+nameoe+"' and phno='"+phno+"'";
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
                sql = "select nameoe,advance from adv_salary";
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    name = db.rs.getString("nameoe");
                    adv = db.rs.getInt("advance");
                    counter++;
                }
                if((counter > 0) && (adv > 0)){
                    sql = "update adv_salary set advance="+adv+" where nameoe ='"+nameoe+"' and phno='"+phno+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    
                }
                if((counter > 0) && (adv == 0)){
                    sql = "update adv_salary set advance ="+0+" where nameoe='"+nameoe+"' and phno='"+phno+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                }
                if(counter == 0){
                    sql1="insert into adv_salary(nameoe,phno,advamt,advance,date) values ('"+nameoe+"','"+phno+"','"+advamt+"',"+0+",'"+ new java.util.Date() +"')";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql1);
                }                
            }
            else{
                advance = (Integer.parseInt(advamt)) - sal;
                sql1 = "update employee set salary ="+0+" where name='"+nameoe+"' and phno='"+phno+"'";
                db.conn.createStatement();
                db.st.executeUpdate(sql1); 
                
                sql = "select nameoe,advance from adv_salary";
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    name = db.rs.getString("nameoe");
                    adv = db.rs.getInt("advance");
                    counter++;
                }              
                if((counter > 0) && (adv > 0)){
                    advance +=  adv;
                    sql = "update adv_salary set advance="+advance+" where nameoe ='"+nameoe+"' and phno='"+phno+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    
                }
                if((counter > 0) && (adv == 0)){
                    sql = "update adv_salary set advance ="+advance+" where nameoe='"+nameoe+"' and phno='"+phno+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                }
                if(counter == 0){
                    sql1="insert into adv_salary(nameoe,phno,advamt,advance,date) values ('"+nameoe+"','"+phno+"','"+advamt+"','"+advance+"','"+ new java.util.Date() +"')";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql1);
                }                
            }
                
//            sql = "insert into adv_salary(nameoe,phno,advamt,date)values('" + nameoe + "','" + phno + "','" + advamt + "','" + date + "')";
//            db.conn.createStatement();
//            db.st.executeUpdate(sql);
//
//            sql = "select salary from employee";
//            db.rs = db.st.executeQuery(sql);
//            while (db.rs.next()) {
//                sa = db.rs.getString("salary");
//            }
//            System.out.println("sa ="+sa);
//              //  System.out.println("name ="+ nameoe + "na ="+ na);
//            //  System.out.println("phno ="+ phno + "ph ="+ ph);
//            sal = ((Integer.parseInt(sa)) - (Integer.parseInt(advamt))) ;
//            System.out.println("sal ="+sal);
//            //    System.out.println("petrol =" + petrol + " " + "vehicleno =" + vehicleno + " " + "pick =" + pick + " " + "drop =" + drop + "repairing =" + repairing);
//            sql = "update employee set salary ='" + sal + "' where name='" + nameoe + "' and phno ='" + phno + "'";
//            db.conn.createStatement();
//            db.st.executeUpdate(sql);
            /*,snak="",ban="",name="",adv="",ext="",count="",amtadv="",pet="",vehno="",pic="",dro="",repair="",sa="",ph="",na="";
             int counter=0,counter1=0;
             
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
