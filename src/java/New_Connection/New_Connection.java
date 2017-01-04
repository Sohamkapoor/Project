/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package New_Connection;

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
public class New_Connection extends HttpServlet {

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
//            out.println("<title>Servlet New_Connection</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet New_Connection at " + request.getContextPath() + "</h1>");
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
            ArrayList<String> rates = new ArrayList<String>();
            ArrayList<String> quatities = new ArrayList<String>();
            ArrayList<Integer> amount = new ArrayList<Integer>();
            int amts = 0, sum = 0;
            double vatVal = 0.0, grandtotal = 0.0;
            String sql="",sql1="";
            final int totalTextBox = 12;
            String rateCheck, quantCheck, vat = "";
            String salutation = request.getParameter("salutation");
            String type = request.getParameter("type");
            String fname = request.getParameter("form-first-name");
            String mname = request.getParameter("middle-name");
            String lname = request.getParameter("form-last-name");
            String customername = fname + " " + mname + " " + lname;
            String connectionby = request.getParameter("form-connectionby");
            String tinno = request.getParameter("form-tinno");
            String dob = request.getParameter("datepicker");
            String father = request.getParameter("form-father-name");
            String mother = request.getParameter("form-mother-name");
            String spouse = request.getParameter("form-spouse");
            String address = request.getParameter("form-address");
            String pincode = request.getParameter("form-pincode");
            // int pin = Integer.parseInt(pincode.trim());
            String telephone = request.getParameter("form-telephone");
            // int tele= Integer.parseInt(telephone.trim());
            String mob = request.getParameter("form-mob");
            // long mobile = Long.parseLong(mob.trim());
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
            String cylinder = request.getParameter("form-qty5");
            if(cylinder.equals("")){cylinder="0";}
            String pipe15 = request.getParameter("form-qty2");
            if(pipe15.equals("")){pipe15="0";}
            String sto = request.getParameter("form-qty3");
            if(sto.equals("")){sto="0";}
            String idselected = "";
            String idnumber = "";
            if (passport == null) {
                passport = "";
            }
            out.println("<table border=\"1px\" width=\"60%\">");
            out.println("<tr> <td align=\"center\" colspan=\"2\"> <h3> Customer Details </h3> </td> </tr>");
            out.println("<tr>\n"
                    + "                <th> Details </th>\n"
                    + "                <th> User Input </th>\n"
                    + "            </tr>");
            out.println("<tr> <td align=\"center\"> <h3>Customer Joining Date :</h3></td>\n"
                    + "                    <td align=\"center\"> " + new java.util.Date() + " </td> </tr> ");
            out.println("<tr> <td align=\"center\"> <h3>Salutation :</h3></td> <td align=\"center\"> " + salutation + " </td></tr>");
            out.println("<tr> <td align=\"center\"> <h3>Type Of Customer :</h3></td> <td align=\"center\"> " + type + " </td></tr>");
            out.println("<tr> <td align=\"center\"> <h3>Name :</h3></td> <td align=\"center\"> " + customername + " </td></tr>");
            out.println("<tr> <td align=\"center\"><h3>Date Of Birth :</h3></td> <td align=\"center\"> " + dob + " </td></tr>");
            out.println("<tr> <td align=\"center\"><h3>Father's Name :</h3></td> <td align=\"center\"> " + father + " </td></tr>");
            out.println("<tr> <td align=\"center\"><h3>Mother's Name :</h3></td> <td align=\"center\"> " + mother + " </td></tr>");
            if (spouse.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Spouse Name :</h3></td> <td align=\"center\"> " + spouse + " </td></tr>");
            }
            out.println("<tr> <td align=\"center\"><h3>Customer address :</h3></td> <td align=\"center\"> " + address + " </td></tr>");
            out.println("<tr> <td align=\"center\"> <h3> Pin Code :</h3> </td> <td align=\"center\"> " + pincode + " </td></tr>");
            if (telephone.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"> <h3>Telephone :</h3> </td> <td align=\"center\"> " + telephone + " </td></tr>");
            }
            out.println("<tr> <td align=\"center\"><h3>Mobile Number:</h3></td> <td align=\"center\"> " + mob + " </td></tr>");
            if (email.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Email ID :</h3></td> <td align=\"center\"> " + email + " </td></tr>");
            }
            if (bank.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Bank Name :</h3></td> <td align=\"center\"> " + bank + " </td></tr>");
            }
            if (branch.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Branch & Address :</h3></td> <td align=\"center\"> " + branch + " </td></tr>");
            }
            if (ifsc.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>IFSC Code :</h3></td> <td align=\"center\"> " + ifsc + " </td></tr>");
            }
            if (acc.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Account Number :</h3></td> <td align=\"center\"> " + acc + " </td></tr>");
            }
            if (adharno.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Adhar Number :</h3></td> <td align=\"center\"> " + adharno + "</td></tr>");
                idnumber = idnumber +" " + adharno;
            }
            if (pan.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Pan Number :</h3></td> <td align=\"center\"> " + pan + "</td> </tr>");
                idnumber = idnumber +" " + pan;
            }
            if (dl.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Driving Licence :</h3></td> <td align=\"center\"> " + dl + " </td></tr>");
                idnumber = idnumber +" " +dl;
            }
            if (ration.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Ration Card :</h3> </td> <td align=\"center\"> " + ration +  "</td></tr>");
                idnumber = idnumber +" "+ration;
            }
            if (passport.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Passport Number :</h3> </td> <td align=\"center\"> " + passport + "</td></tr>");
                idnumber = idnumber +" " + passport;
            }
            if (voter.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>Voter ID :</h3> </td> <td align=\"center\"> " + voter + " </td></tr>");
                idnumber = idnumber +" " + voter;
            }
            if (state.equals("")) {
            } else {
                out.println("<tr> <td align=\"center\"><h3>State & Central ID :</h3></td> <td align=\"center\"> " + state +  "</td></tr>");
                idnumber = idnumber +" " + state;
            }
            try {
                for (int i = 0; i < id.length; i++) {
                    out.println("<tr><td align=\"center\"><h3>ID Submitted :</h3></td> <td align=\"center\">" + id[i] + " </td></tr>");
                    idselected = idselected + " " + id[i];
                }

            } catch (NullPointerException f) {
            }
            try {
                int filled=0;
                 sql = "insert into new_customer(salutation,connectionby,name,dob,tinno,fathername,mothername,spousename,address,pincode,telephone,mobile,email,bankname,bankaddress,ifsc,accno,idsubmitted,idnumber,purchase,type,cylinder,pipe15,stove) values('" + salutation + "','" + connectionby + "','" + customername + "','" + dob + "','" + tinno + "','" + father + "','" + mother + "','" + spouse + "','" + address + "','" + pincode + "','" + telephone + "','" + mob + "','" + email + "','" + bank + "','" + branch + "','" + ifsc + "','" + acc + "','" + idselected + "','" + idnumber + "','" + stove + "','" + type + "','"+cylinder+"','"+pipe15+"','"+sto+"')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);

                if(type.equals("domestic")){
                    sql="select filled_fourteen from godown where id="+1;
                    db.rs = db.st.executeQuery(sql);
                    while (db.rs.next()) { 
                        filled = db.rs.getInt("filled_fourteen");
                    }
                    filled = filled - (Integer.parseInt("cylinder"));
                sql1=" update godown set filled_fourteen ='"+filled+"' where id="+1;
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
                }
                else if(type.equals("nd"))
                {
                    sql="select filled_nineteen from godown where id="+1;
                    db.rs = db.st.executeQuery(sql);
                    while (db.rs.next()) { 
                        filled = db.rs.getInt("filled_nineteen");
                    }
                    filled = filled - (Integer.parseInt("cylinder"));
                sql1=" update godown set filled_nineteen ='"+filled+"' where id="+1;
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
                }
            } catch (Exception f) {
                f.printStackTrace();
            }
            out.println("</table>");
            out.println("<p class=\"declaration\"><font size=\"2\">I declare that the information provided by me on the above form is true and correct to the best of\n"
                    + "            my knowledge and belief.I also confirm that in the event of any information provided by me is not true and incomplete\n"
                    + "            and also in the event of any violation of Government Regulation<br/> related to the supply and distributor of LPG, IOCL\n"
                    + "            will be well within its right to take necessary action including discontinuation of supply of LPG cylinders,\n"
                    + "            can forfeit the security<br/> deposit and can levy panel charges as per the policy and guidelines. I am willing/not\n"
                    + "            willing to avail the subsidy on LPG cylinders therefore I have provided/not provided my Bank account details on the above request form.</font></p><br/>\n"
                    + "        <br/> Name : " + customername + "   <p align=\"right\">Signature Of Customer : </p> \n"
                    + "        <p>Date : " + new java.util.Date() + "</p>");            
            if (type.equals("domestic")) {
                out.println("<br/>");
            out.println("<h3 align=\"center\">Format for Declaration</h3>\n"
                    + "        <p align=\"center\">(To be submitted by persons desirous of New LPG connection or connection against Termination Voucher)</p>\n"
                    + "        <h3 align=\"center\">Declaration</h3>");
            out.println("<p class=\"declaration\"><font size=\"3\">I " + customername + " Son/Daughter Of " + father + " Age <% /* age */%> Years. resident of "+ address +"\n"
                    + "            desire to take domestic LPG connection in my name and affirm as under.<br/>\n"
                    + "            1) That I am an Indian citizen/Non Resident Indian/Staff of Foreign nationality serving in India/ Foreign \n"
                    + "            national residing in India under valid visa/ person returning to India of transfer of residence basis/PIO.<br/>\n"
                    + "            * Tick whichever is applicable. Only Indian citizens are eligible for subsidized LPG.<br/>\n"
                    + "            2) That my date of birth is <%= dob%>(LPG connection cannot be provided to a person under 18yrs of age).<br/>\n"
                    + "            3) That neither I, nor any other member of the household(household means a family consisting of husband, wife, unmarried \n"
                    + "            children and dependent parents living together in a dwelling unit having common kitchen), possess any LPG connection \n"
                    + "            from PSU Oil Companies or piped Natural Gas Connection for domestic use in our dwelling unit.<br/>\n"
                    + "            4) @ That I am enclosing a copy of Ration Card number " + ration + " including my name.<br/>");
            out.println("<p align=\"center\"> or </p>");
            out.println("@ That I don't have Ration Card in my name or in the name of any member of my 'household' as defined above. As and when \n"
                    + "        a ration card is issued in my name or in the name of any of the member of the 'household', the same shall be produced to Oil Company LPG distributor for updation records.<br/>\n"
                    + "        @ delete, whichever is not applicable.<br/>\n"
                    + "        5) That I am enclosing the KYC from duly filled in along with the Proof of Address(POA) and Proof Of Identity(POI).<br/>\n"
                    + "        6) I confirm that the LPG connection is issued to me will be used in my above mentioned address and for domestic cooking \n"
                    + "        purpose only and I shall abide by all terms governing its use.<br/>\n"
                    + "        7) That I shall not position any other LP gas installations in the same kitchen.<br/>\n"
                    + "        8) That as and when second cylinder is issued to me against this connection the same will also be issued in the same kitchen\n"
                    + "        and with the original installation.<br/>\n"
                    + "        9) That whenever I change my residence from present address to another, I will inform M/s ..........\n"
                    + "        (Name of Distributor/RGGLY)In writing in advance for change of address in records.<br/>\n"
                    + "        10) That I am aware that the domestic subsidized LPG connections as well be released my M/S. Indian Oil Corporation(IOCL)/\n"
                    + "        Bharat Petroleum Corporation(BPCL)/Hindustan Petroleum Corporation(HPCL) on the basis of declaration and \n"
                    + "        information submitted By me in the known your Customer(KYC) form,Proof Of Address and Proof Of Identity, shall later be\n"
                    + "        subjected to de-duplication check for existence of any other member of my 'household' as at para '3' above.<br/>\n"
                    + "        11) That if any information/ declaration given by me in this undertaking, the \"KYC\" form or any document submitted in support of\n"
                    + "        identity/residence proof shall be found untrue or incorrect or false, the Oil Company would be within its right to withdraw the \n"
                    + "        supply of Gas/ Terminate the connection/seize the equipments/forfeit the security deposit and that I would have no claim \n"
                    + "        what so ever against IOCL/BPCL/HPCL for such withdrawal/Termination/Seizure/forfeiture.\n"
                    + "\n"
                    + "        I hereby declare that whatever has been stated above is true to the best of my knowledge, correct and nothing material has\n"
                    + "        been concealed there from <br/></font> </p>\n"
                    + "    Date: " + new java.util.Date() + " <p align=\"right\"> Signature Of person giving the Declaration</p><br/>\n"
                    + "    Place:   <p align=\"right\">Name: " + customername + "</p>");

            if (stove.equals("no")) {
                out.println("<h4 align=\"center\"> Shri Mangalam Indane</h4>\n"
                        + "    <h3 align=\"center\">C-66 B.K. Kaul, Haribhau Upadhaya Nagar, Ajmer </h3>\n"
                        + "    <p> Before providing Gas Connection for security reasons quality testing report by mechanic of consumer gas stove and kitchen is as follows</p><br/>\n"
                        + "    Number : ________ <p align=\"right\">Date :- " + new java.util.Date() + "</p><br/>\n"
                        + "    Shri/Miss " + customername + " date of birth " + dob + " address " + address + " <br/>\n"
                        + "    1) Name of the creator of Gas Stove :- _____________<br/>\n"
                        + "    2) Is GAS approved by ISI? :- _____________ <br/>\n"
                        + "    3) Is usage of gas more than 332 gram/hour? :- ________ <br/>\n"
                        + "    4) Is kitchen have enough ventilation? :- ________ <br/>\n"
                        + "    5) Is there a platform in kitchen to keep stove ? :- _________ <br/>\n"
                        + "    6) Is platform made of any flame able object? :- _______ <br/>\n"
                        + "    7) Is gas connection been used in sleeping room? :- _____ <br/>\n"
                        + "    8) Which flame is been used in the house before? :- __________ <br/>\n"
                        + "    9) If gas connection is already there which company customer are you? ___________<br/>\n"
                        + "    10)Distributor name ______________________ Customer Number _______________ <br/>\n"
                        + "    11)Is Refrigerator there in kitchen ______________________ <br/>\n"
                        + "    12)Is there temple in kitchen? :- ______________________ <br/>\n"
                        + "    13)Since when customer is staying on this address? :- _______________ <br/>\n"
                        + "    14)Name of Inspecting officer? :- _________________________ <br/>\n"
                        + "    <br/> <br/>\n"
                        + "    Signature Of Customer <p align=\"right\">Signature Of Mechanic</p>");

                out.println("<h3 align=\"center\"> Office Report </h3>");
                out.println("<p>\n"
                        + "        1) Issue Gas connection. Customer Number :- _____________________ <br/>\n"
                        + "        2) Reason for, Why gas connection is not issued :-<br/>\n"
                        + "        &nbsp; a) ___________________\n"
                        + "        &nbsp; b) ___________________\n"
                        + "        &nbsp; c) ___________________\n"
                        + "    </p>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
                out.println("<br/>");
            }

            
                vat = request.getParameter("form-vat").trim();
                if (!vat.equals("")) {
                    vatVal = Double.parseDouble(vat);
                }

                System.out.println("vat =" + vatVal);
                for (int rateTextCount = 1; rateTextCount <= totalTextBox; rateTextCount++) {
                    rateCheck = request.getParameter("form-rate" + rateTextCount).trim();
                    if (!rateCheck.equals("")) {
                        rates.add(rateCheck);
                    } else {
                        rateCheck = "0";
                        rates.add(rateCheck);
                    }
                }
                for (int quantityTextCount = 1; quantityTextCount <= totalTextBox; quantityTextCount++) {
                    quantCheck = request.getParameter("form-qty" + quantityTextCount).trim();
                    if (!quantCheck.equals("")) {
                        quatities.add(quantCheck);
                    } else {
                        quantCheck = "0";
                        quatities.add(quantCheck);
                    }
                }

                if (rates.size() == quatities.size()) {

                    for (int totalCount = 0; totalCount < quatities.size(); totalCount++) {
                        amts = (Integer.parseInt(rates.get(totalCount)) * (Integer.parseInt(quatities.get(totalCount))));
                        sum = sum + amts;
                        amount.add(amts);
                    }

                }
                grandtotal = vatVal + sum;
                out.println("<br/>");
                out.println("<table border=\"1px\" cellspacing=\"5\">");
                out.println("<tr>\n"
                        + "            <th><h3>S.No</h3></th> \n"
                        + "    <th><h3>Particulars</h3></th>                                                \n"
                        + "<th><h3>Rate</h3></th> \n"
                        + "<th><h3>Quantity</h3></th>\n"
                        + "<th><h3>Amount</h3></th>\n"
                        + "</tr>");
                out.println("<tr>                                                        \n"
                        + "    <td><label for=\"Sno\">01</label></td>\n"
                        + "    <td><label for=\"form-cylinder\">Deposite of Indane Gas Cylinder</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(0) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(0) + "</label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(0) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">02</label></td>\n"
                        + "    <td><label  for=\"form-dpr\">Deposite of D.P.R</label></td> \n"
                        + "    <td><label for=\"rate\"> " + rates.get(1) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(1) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(1) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>                                               \n"
                        + "    <td> <label for=\"Sno\">03</label></td>\n"
                        + "    <td><label for=\"form-plate\">Hot Plate</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(2) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(2) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(2) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">04</label></td>\n"
                        + "    <td><label for=\"form-inspect\">Hot Plate inspection charges</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(3) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(3) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(3) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">05</label></td>\n"
                        + "    <td><label for=\"form-cost\">Cost of Indane Gas Cylinder(14.2)</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(4) + "</label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(4) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(4) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">06</label></td>\n"
                        + "    <td><label for=\"form-deposite\">Deposite of Indane Gas Suraksha Hosr 1.5MT</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(5) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(5) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(5) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">07</label></td>\n"
                        + "    <td><label for=\"form-charges\">Administrative Charges</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(6) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(6) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(6) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">08</label></td>\n"
                        + "    <td><label  for=\"form-caps\">Damage Regulator Caps</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(7) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(7) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(7) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">09</label></td>\n"
                        + "    <td><label  for=\"form-cta\">Administrative Charges seeking Confirmation Of CTA/ITA/TV etc.</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(8) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(8) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(8) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">10</label></td>\n"
                        + "    <td><label  for=\"form-installation\">Installation Charges</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(9) + "</label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(9) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(9) + " </label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td><label for=\"Sno\">11</label></td>\n"
                        + "    <td><label  for=\"form-indage\">Indane Gas Con. Card</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(10) + " </label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(10) + " </label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(10) + "</label></td>\n"
                        + "</tr>\n"
                        + "<tr>\n"
                        + "    <td><label for=\"Sno\">12</label></td>\n"
                        + "    <td><label  for=\"form-installation\">Other Terms</label></td>\n"
                        + "    <td><label for=\"rate\"> " + rates.get(11) + "</label></td>\n"
                        + "    <td><label for=\"qty\"> " + quatities.get(11) + "</label></td>\n"
                        + "    <td><label for=\"total\"> " + amount.get(11) + "</label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td></td>\n"
                        + "    <td></td>\n"
                        + "    <td></td>\n"
                        + "    <td><label for=\"add\">Total</label></td>\n"
                        + "    <td><label for=\"add\"> " + sum + "</label></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "    <td></td>\n"
                        + "    <td><label for=\"rupee\">Rupees in words</label></td>\n"
                        + "    <td></td>\n"
                        + "    <td><label for=\"vat\">Vat</label></td>\n"
                        + "    <td><label for=\"vat\">" + vatVal + "</label></td>\n"
                        + "</tr>\n"
                        + "<tr>\n"
                        + "    <td></td>\n"
                        + "    <td></td>\n"
                        + "    <td></td>\n"
                        + "    <td><label for=\"grand\">Grand Total</label></td>\n"
                        + "    <td><label for=\"grand\">" + grandtotal + " </label></td>\n"
                        + "</tr>\n"
                        + "<tr>\n"
                        + "    <td><label align=\"right\" for=\"agency\">For: Shree Mangalam Indane</label></td>                                                            \n"
                        + "    <td><label align=\"left\" for=\"grand\">Customer signature</label></td>\n"
                        + "    <td><label align=\"right\" for=\"grand\">Signature</label></td>\n"
                        + "</tr>\n"
                        + "\n"
                        + "</table>");
                out.println("<p align='center'> <input type='button' value=' Print this Page' onclick='window.print()'/> </p>");
            }
            else{
            out.println("<p align='center'> <input type='button' value=' Print this Page' onclick='window.print()'/> </p>");
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
