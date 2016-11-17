/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package NewCustomerInfo;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author sohamkapoor
 */
public class NewCustomerInfo extends HttpServlet {

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
        /* out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet NewCustomerInfo</title>");            
         out.println("</head>");
         out.println("<body>");
         out.println("<h1>Servlet NewCustomerInfo at " + request.getContextPath() + "</h1>");
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
            String salutation = request.getParameter("salutation");
            String fname = request.getParameter("form-first-name");
            String mname = request.getParameter("middle-name");
            String lname = request.getParameter("form-last-name");
            String customername = fname + " " + mname + " " + lname;
            String dob = request.getParameter("form-dob");
            String father = request.getParameter("form-father-name");
            String mother = request.getParameter("form-mother-name");
            String spouse = request.getParameter("form-spouse");
            String address = request.getParameter("form-address");
            String pincode = request.getParameter("form-pincode");
            int pin = Integer.parseInt(pincode.trim());
            String telephone = request.getParameter("form-telephone");
            // int tele= Integer.parseInt(telephone.trim());
            String mob = request.getParameter("form-mob");
            long mobile = Long.parseLong(mob.trim());
            String email = request.getParameter("form-email");
            String bank = request.getParameter("form-bank");
            String branch = request.getParameter("form-branch-address");
            String ifsc = request.getParameter("form-ifsc");
            String acc = request.getParameter("form-accno");
            // long account = Long.parseLong(acc.trim());
            String[] id = request.getParameterValues("form-document");
            String adharno = request.getParameter("form-adharno");
            String pan = request.getParameter("form-panno");
            String passport = request.getParameter("form-passport");
            String dl = request.getParameter("form-dlno");
            String ration = request.getParameter("form-rationno");
            String voter = request.getParameter("form-voterno");
            String state = request.getParameter("form-stateid");
            String stove = request.getParameter("form-stove");
            String idnumber = "";
            String idselected = "";
            if (passport == null) {
                passport = "";
            }
            out.print("<html>");
            out.print("<head>");
            out.print("</head>");
            out.print("<body>");
            out.print("<table border='1px'>");
            out.print("<tr> <td align='center'><font size='5'> <h3>Customer Joining Date :</h3></font></td><td align='center'><font size='5'> " + new java.util.Date() + " </font></td></tr>");
            out.print("<tr> <td align='center'><font size='5'> <h3>Salutation :</h3></font></td><td align='center'><font size='5'> " + salutation + "</font></td></tr>");
            out.print("<tr> <td align='center'><font size='5'> <h3>Name :</h3></font></td><td align='center'><font size='5'>" + customername + " </font></td></tr>");
            out.print(" <tr> <td align='center'><font size='5'><h3>Date Of Birth :</h3></font></td><td align='center'><font size='5'> " + dob + " </font></td></tr>");
            out.print("<tr> <td align='center'><font size='5'><h3>Father's Name :</h3></font></td><td align='center'><font size='5'> " + father + " </font></td></tr>");
            out.print("<tr> <td align='center'><font size='5'><h3>Mother's Name :</h3></font></td><td align='center'><font size='5'>" + mother + " </font></td></tr>");
            if (spouse.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Spouse Name :</h3></font></td><td align='center'><font size='5'>" + spouse + "</font></td></tr>");
            }

            out.print("<tr> <td align='center'><font size='5'><h3>Customer address :</h3></font></td><td align='center'><font size='5'> " + address + " </font></td></tr>");
            out.print("<tr> <td align='center'><font size='5'> <h3> PinCode :</h3> </font></td> <td align='center'><font size='5'>" + pincode + " </font></td></tr>");
            if (telephone.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'> <h3>Telephone :</h3> </font></td><td align='center'><font size='5'> " + telephone + "</font></td></tr>");
            }
            out.print("<tr> <td align='center'><font size='5'><h3>Mobile Number:</h3></font></td><td align='center'><font size='5'> " + mob + "</font></td></tr>");
            if (email.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Email ID :</h3></font></td><td align='center'><font size='5'>" + email + "</font></td></tr>");
            }
            if (bank.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Bank Name :</h3></font></td><td align='center'><font size='5'>" + bank + "</font></td></tr>");
            }
            if (branch.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Branch & Address :</h3></font></td><td align='center'><font size='5'> " + branch + "</font></td></tr>");
            }
            if (ifsc.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>IFSC Code :</h3></font></td><td align='center'><font size='5'> " + ifsc + "</font></td></tr>");
            }
            if (acc.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Account Number :</h3></font></td><td align='center'><font size='5'> " + acc + "</font></td></tr>");
            }
            if (adharno.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Adhar Number :</h3></font></td><td align='center'><font size='5'> " + adharno + " </font></td></tr>");
            }
            idnumber = idnumber + " " + adharno;
            if (pan.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Pan Number :</h3></font></td><td align='center'><font size='5'> " + pan + "</font></td> </tr>");
            }
            idnumber = idnumber + " " + pan;
            if (dl.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Driving Licence :</h3></font></td><td align='center'><font size='5'>" + dl + "</font></td></tr>");
            }
            idnumber = idnumber + " " + dl;
            if (ration.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Ration Card :</h3> </font></td><td align='center'><font size='5'>" + ration + "</font></td></tr>");
            }
            if (passport.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Passport Number :</h3> </font></td><td align='center'><font size='5'> " + passport + "</font></td></tr>");
            }
            idnumber = idnumber + " " + passport;
            if (voter.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>Voter ID :</h3> </font></td><td align='center'><font size='5'>" + voter + "</font></td></tr>");
            }
            idnumber = idnumber + " " + voter;
            if (state.equals("")) {
            } else {
                out.print("<tr> <td align='center'><font size='5'><h3>State & Central ID :</h3></font></td><td align='center'><font size='5'>" + state + " </font></td></tr>");
            }
            idnumber = idnumber + " " + state;
            out.print("</body");
            out.print("</html>");
            /* System.out.println("name ="+customername+" "+"dob ="+ dob +" "+"fname ="+ father+" "+"mname ="+ mother+" "+"spouse ="+spouse+" "+"address ="+address+" "+"pin ="+pin);
             System.out.println("tele ="+telephone+" "+"mob ="+mobile+" "+"email="+email+" "+"bank ="+bank+" "+"branch ="+branch+" "+"ifsc ="+ifsc+" "+"acc ="+acc+" "+"adharno ="+adharno+" "+"pan no="+pan);
             System.out.println("passport ="+passport+" "+"dl ="+dl+" "+"ration ="+ ration+" "+"voter ="+voter+" "+"state="+state);*/

            for (int i = 0; i < id.length; i++) {
                out.print("<tr><td align='center'><font size='5'><h3>ID Submitted :</h3></font></td><td align='center'><font size='5'>" + id[i] + "</font></td></tr>");
                idselected = idselected + " " + id[i];
            }

            System.out.println("outside database");

            System.out.println("inside database");
            /* String sql="insert into new_customer(salutation,name,dob,fathername,mothername,"
             + "spousename,address,"
             + "pincode,telephone,mobile,email,bankname,bankaddress,ifsc,accno,"
             + "idsubmitted,idnumber,purchase)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
             db.stmt=db.conn.prepareStatement(sql);
             db.stmt.setString(1,salutation);
             db.stmt.setString(2 ,customername );
             db.stmt.setString(3 ,dob );
             db.stmt.setString(4 ,father );
             db.stmt.setString(5 ,mother );
             db.stmt.setString(6 ,spouse );
             db.stmt.setString(7 ,address );
             db.stmt.setString(8 ,pincode );
             db.stmt.setString(9 ,telephone );
             db.stmt.setString(10 ,mob );
             db.stmt.setString(11 ,email );
             db.stmt.setString(12 ,bank );
             db.stmt.setString(13 ,branch );
             db.stmt.setString(14 ,ifsc );
             db.stmt.setString(15 ,acc );
             db.stmt.setString(16 ,idselected );
             db.stmt.setString(17 ,idnumber );
             db.stmt.setString(18 ,stove );*/
            try {
                String sql = "insert into new_customer(salutation,name,dob,fathername,mothername,spousename,address,pincode,telephone,mobile,email,bankname,bankaddress,ifsc,accno,idsubmitted,idnumber,purchase) values('" + salutation + "','" + customername + "','" + dob + "','" + father + "','" + mother + "','" + spouse + "','" + address + "','" + pincode + "','" + telephone + "','" + mob + "','" + email + "','" + bank + "','" + branch + "','" + ifsc + "','" + acc + "','" + idselected + "','" + idnumber + "','" + stove + "')";

         // Open a connection
                db.conn.createStatement();

                db.st.executeUpdate(sql);
                System.out.println("row inserted");
                //request.getRequestDispatcher("new_connection.jsp").forward(request,response);
            } catch (Exception f) {
                System.out.println(" hi");
                f.printStackTrace();
            }

            /* out.println("<h2 align='center'>Declaration</h2>");
             out.println("<p class='declaration'><font size='2'>I declare that the information provided by me on the above form is true and correct to the best of ");
             out.print("my knowledge and belief.I also confirm that in the event of any information provided by me is not true and incomplete and also in the event of ");
             out.print("any violation of Government Regulation<br/> related to the supply and distributor of LPG, IOCL will be well within its right to take necessary action"); 
             out.print("including discontinuation of supply of LPG cylinders,can forfeit the security<br/> deposit and can levy panel charges as per the policy and guidelines.");
             out.print("I am willing/not willing to avail the subsidy on LPG cylinders therefore I have provided/not provided my Bank account details on the above request form.</font></p><br/>");
             out.println("<br/> Name : "+ customername + " "+" " +" <p align='right;>Signature Of Customer : </p>"); 
             out.println("<p>Date : "+ new java.util.Date()+"</p>");*/
        } catch (Exception e) {
            System.out.println(e);
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
