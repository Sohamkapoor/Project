<%-- 
    Document   : detail
    Created on : Nov 18, 2016, 2:31:34 PM
    Author     : sohamkapoor
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datab.Datab"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Detail</title>
    </head>
    <body>
        <%
            try {
                Datab db = new Datab();
                ArrayList<String> rates = new ArrayList<String>();
                ArrayList<String> quatities = new ArrayList<String>();
                ArrayList<Integer> amount = new ArrayList<Integer>();
                int amts = 0, sum = 0;
                double vatVal = 0.0,grandtotal=0.0;
                final int totalTextBox = 12;
                String rateCheck, quantCheck, vat = "";
                String salutation = request.getParameter("salutation");
                String type = request.getParameter("type");
                String fname = request.getParameter("form-first-name");
                String mname = request.getParameter("middle-name");
                String lname = request.getParameter("form-last-name");
                String customername = fname + " " + mname + " " + lname;
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
                String idselected = "";
                String idnumber = "";
                if (passport == null) {
                    passport = "";
                }                
                
        %>
        <table border="1px">
            <tr> <td> <h3>Customer Joining Date :</h3></td><td> <%= new java.util.Date()%></td></tr>
            <tr> <td> <h3>Salutation :</h3></td><td> <%= salutation%></td></tr>
            <tr> <td> <h3>Type Of Customer :</h3></td><td> <%= type%></td></tr>
            <tr> <td> <h3>Name :</h3></td><td> <%= customername%></td></tr>
            <tr> <td><h3>Date Of Birth :</h3></td><td> <%= dob%></td></tr>
            <tr> <td><h3>Father's Name :</h3></td><td> <%= father%></td></tr>
            <tr> <td><h3>Mother's Name :</h3></td><td> <%= mother%></td></tr>
            <% if (spouse.equals("")) {
            } else {%>
            <tr> <td><h3>Spouse Name :</h3></td><td> <%= spouse%><%}%></td></tr>
            <tr> <td><h3>Customer address :</h3></td><td> <%= address%></td></tr>
            <tr> <td> <h3> Pin Code :</h3> </td> <td> <%= pincode%> </td></tr>
            <% if (telephone.equals("")) {
            } else {%>
            <tr> <td> <h3>Telephone :</h3> </td><td><%= telephone%><%}%></td></tr>
            <tr> <td><h3>Mobile Number:</h3></td><td> <%= mob%></td></tr>
            <% if (email.equals("")) {
            } else {%>
            <tr> <td><h3>Email ID :</h3></td><td> <%= email%><%}%></td></tr>
            <% if (bank.equals("")) {
            } else {%>
            <tr> <td><h3>Bank Name :</h3></td><td> <%= bank%><%}%></td></tr>
            <% if (branch.equals("")) {
            } else {%>
            <tr> <td><h3>Branch & Address :</h3></td><td> <%= branch%><%}%></td></tr>
            <% if (ifsc.equals("")) {
            } else {%>
            <tr> <td><h3>IFSC Code :</h3></td><td> <%= ifsc%><%}%></td></tr>
            <% if (acc.equals("")) {
            } else {%>
            <tr> <td><h3>Account Number :</h3></td><td> <%= acc%><%}%></td></tr>
            <% if (adharno.equals("")) {
            } else {%>
            <tr> <td><h3>Adhar Number :</h3></td><td> <%= adharno%><%idnumber = idnumber + " " + adharno;
            }%></td></tr>
            <% if (pan.equals("")) {
            } else {%>
            <tr> <td><h3>Pan Number :</h3></td><td> <%= pan%><%idnumber = idnumber + " " + pan;
            }%></td> </tr>
            <% if (dl.equals("")) {
            } else {%>
            <tr> <td><h3>Driving Licence :</h3></td><td> <%= dl%><%idnumber = idnumber + " " + dl;
            }%></td></tr>
            <% if (ration.equals("")) {
            } else {%>
            <tr> <td><h3>Ration Card :</h3> </td><td> <%= ration%><%idnumber = idnumber + " " + ration;
            }%></td></tr>
            <% if (passport.equals("")) {
             } else {%>
            <tr> <td><h3>Passport Number :</h3> </td><td> <%= passport%><%idnumber = idnumber + " " + passport;
            }%></td></tr>
            <% if (voter.equals("")) {
            } else {%>
            <tr> <td><h3>Voter ID :</h3> </td><td><%= voter%><%idnumber = idnumber + " " + voter;
            }%></td></tr>
            <% if (state.equals("")) {
            } else {%>
            <tr> <td><h3>State & Central ID :</h3></td><td> <%= state%><%idnumber = idnumber + " " + state;
            }%></td></tr>
            <% try {
               for (int i = 0; i < id.length; i++) {%>
            <tr><td><h3>ID Submitted :</h3></td><td><%= id[i]%></td></tr>
            <% idselected = idselected + " " + id[i];
                    }
                   
                } catch (NullPointerException f) {
                }
                try {
                    String sql = "insert into new_customer(salutation,name,dob,fathername,mothername,spousename,address,pincode,telephone,mobile,email,bankname,bankaddress,ifsc,accno,idsubmitted,idnumber,purchase,type) values('" + salutation + "','" + customername + "','" + dob + "','" + father + "','" + mother + "','" + spouse + "','" + address + "','" + pincode + "','" + telephone + "','" + mob + "','" + email + "','" + bank + "','" + branch + "','" + ifsc + "','" + acc + "','" + idselected + "','" + idnumber + "','" + stove + "','"+ type +"')";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    System.out.println("row inserted");
                } catch (Exception f) {
                    f.printStackTrace();
                }
            %>
        </table>
        <h2 align="center">Declaration</h2>
        <p class="declaration"><font size="2">I declare that the information provided by me on the above form is true and correct to the best of
            my knowledge and belief.I also confirm that in the event of any information provided by me is not true and incomplete
            and also in the event of any violation of Government Regulation<br/> related to the supply and distributor of LPG, IOCL
            will be well within its right to take necessary action including discontinuation of supply of LPG cylinders,
            can forfeit the security<br/> deposit and can levy panel charges as per the policy and guidelines. I am willing/not
            willing to avail the subsidy on LPG cylinders therefore I have provided/not provided my Bank account details on the above request form.</font></p><br/>
        <br/> Name : <%= customername + " " + " "%>  <p align="right">Signature Of Customer : </p> 
        <p>Date : <%= new java.util.Date()%></p>

        <p style="page-break-after:always;"></p>
        <h3 align="center">Format for Declaration</h3>
        <p align="center">(To be submitted by persons desirous of New LPG connection or connection against Termination Voucher)</p>
        <h3 align="center">Declaration</h3>
        <p class="declaration"><font size="3">I <%= customername%> Son/Daughter Of <%= father%> Age <% /* age */%> Years. resident of <%= address%>
            desire to take domestic LPG connection in my name and affirm as under.<br/>
            1) That I am an Indian citizen/Non Resident Indian/Staff of Foreign nationality serving in India/ Foreign 
            national residing in India under valid visa/ person returning to India of transfer of residence basis/PIO.<br/>
            * Tick whichever is applicable. Only Indian citizens are eligible for subsidized LPG.<br/>
            2) That my date of birth is <%= dob%>(LPG connection cannot be provided to a person under 18yrs of age).<br/>
            3) That neither I, nor any other member of the household(household means a family consisting of husband, wife, unmarried 
            children and dependent parents living together in a dwelling unit having common kitchen), possess any LPG connection 
            from PSU Oil Companies or piped Natural Gas Connection for domestic use in our dwelling unit.<br/>
            4) @ That I am enclosing a copy of Ration Card number <%= ration%> including my name.<br/>
        <p align="center"> or </p>
        @ That I don't have Ration Card in my name or in the name of any member of my 'household' as defined above. As and when 
        a ration card is issued in my name or in the name of any of the member of the 'household', the same shall be produced to Oil Company LPG distributor for updation records.<br/>
        @ delete, whichever is not applicable.<br/>
        5) That I am enclosing the KYC from duly filled in along with the Proof of Address(POA) and Proof Of Identity(POI).<br/>
        6) I confirm that the LPG connection is issued to me will be used in my above mentioned address and for domestic cooking 
        purpose only and I shall abide by all terms governing its use.<br/>
        7) That I shall not position any other LP gas installations in the same kitchen.<br/>
        8) That as and when second cylinder is issued to me against this connection the same will also be issued in the same kitchen
        and with the original installation.<br/>
        9) That whenever I change my residence from present address to another, I will inform M/s ..........
        (Name of Distributor/RGGLY)In writing in advance for change of address in records.<br/>
        10) That I am aware that the domestic subsidized LPG connections as well be released my M/S. Indian Oil Corporation(IOCL)/
        Bharat Petroleum Corporation(BPCL)/Hindustan Petroleum Corporation(HPCL) on the basis of declaration and 
        information submitted By me in the known your Customer(KYC) form,Proof Of Address and Proof Of Identity, shall later be
        subjected to de-duplication check for existence of any other member of my 'household' as at para '3' above.<br/>
        11) That if any information/ declaration given by me in this undertaking, the "KYC" form or any document submitted in support of
        identity/residence proof shall be found untrue or incorrect or false, the Oil Company would be within its right to withdraw the 
        supply of Gas/ Terminate the connection/seize the equipments/forfeit the security deposit and that I would have no claim 
        what so ever against IOCL/BPCL/HPCL for such withdrawal/Termination/Seizure/forfeiture.

        I hereby declare that whatever has been stated above is true to the best of my knowledge, correct and nothing material has
        been concealed there from <br/></font> </p>
    Date: <%= new java.util.Date()%> <p align="right"> Signature Of person giving the Declaration</p><br/>
    Place:   <p align="right">Name: <%= customername%></p>

    <%
        if (stove.equals("no")) {%>
    <p style="page-break-after:always;"></p>
    <h4 align="center"> Shri Mangalam Indane</h4>
    <h3 align="center">C-66 B.K. Kaul, Haribhau Upadhaya Nagar, Ajmer </h3>
    <p> Before providing Gas Connection for security reasons quality testing report by mechanic of consumer gas stove and kitchen is as follows</p><br/>
    Number : ________ <p align="right">Date :- <%= new java.util.Date()%></p><br/>
    Shri/Miss <%= customername%> date of birth <%= dob%> address <%= address%><br/>
    1) Name of the creator of Gas Stove :- _____________<br/>
    2) Is GAS approved by ISI? :- _____________ <br/>
    3) Is usage of gas more than 332 gram/hour? :- ________ <br/>
    4) Is kitchen have enough ventilation? :- ________ <br/>
    5) Is there a platform in kitchen to keep stove ? :- _________ <br/>
    6) Is platform made of any flame able object? :- _______ <br/>
    7) Is gas connection been used in sleeping room? :- _____ <br/>
    8) Which flame is been used in the house before? :- __________ <br/>
    9) If gas connection is already there which company customer are you? ___________<br/>
    10)Distributor name ______________________ Customer Number _______________ <br/>
    11)Is Refrigerator there in kitchen ______________________ <br/>
    12)Is there temple in kitchen? :- ______________________ <br/>
    13)Since when customer is staying on this address? :- _______________ <br/>
    14)Name of Inspecting officer? :- _________________________ <br/>
    <br/> <br/>
    Signature Of Customer <p align="right">Signature Of Mechanic</p>

    <h3 align="center"> Office Report </h3>
    <p>
        1) Issue Gas connection. Customer Number :- _____________________ <br/>
        2) Reason for, Why gas connection is not issued :-<br/>
        &nbsp; a) ___________________
        &nbsp; b) ___________________
        &nbsp; c) ___________________
    </p>
    <% }
                   if(!type.equals("nd")){
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
      grandtotal = vatVal+sum;
                   
    %>
    <table border="1px" cellspacing="5">

        <tr>
            <th><h3>S.No</h3></th> 
    <th><h3>Particulars</h3></th>                                                
<th><h3>Rate</h3></th> 
<th><h3>Quantity</h3></th>
<th><h3>Amount</h3></th>
</tr>
<tr>                                                        
    <td><label for="Sno">01</label></td>
    <td><label for="form-cylinder">Deposite of Indane Gas Cylinder</label></td>
    <td><label for="rate"><%=rates.get(0)%></label></td>
    <td><label for="qty"><%=quatities.get(0)%></label></td>
    <td><label for="total"><%=amount.get(0)%></label></td>
</tr>
<tr>
    <td><label for="Sno">02</label></td>
    <td><label  for="form-dpr">Deposite of D.P.R</label></td> 
    <td><label for="rate"><%=rates.get(1)%></label></td>
    <td><label for="qty"><%=quatities.get(1)%></label></td>
    <td><label for="total"><%=amount.get(1)%></label></td>
</tr>
<tr>                                               
    <td> <label for="Sno">03</label></td>
    <td><label for="form-plate">Hot Plate</label></td>
    <td><label for="rate"><%=rates.get(2)%></label></td>
    <td><label for="qty"><%=quatities.get(2)%></label></td>
    <td><label for="total"><%=amount.get(2)%></label></td>
</tr>
<tr>
    <td><label for="Sno">04</label></td>
    <td><label for="form-inspect">Hot Plate inspection charges</label></td>
    <td><label for="rate"><%=rates.get(3)%></label></td>
    <td><label for="qty"><%=quatities.get(3)%></label></td>
    <td><label for="total"><%= amount.get(3)%></label></td>
</tr>
<tr>
    <td><label for="Sno">05</label></td>
    <td><label for="form-cost">Cost of Indane Gas Cylinder(14.2)</label></td>
    <td><label for="rate"><%=rates.get(4)%></label></td>
    <td><label for="qty"><%=quatities.get(4)%></label></td>
    <td><label for="total"><%=amount.get(4)%></label></td>
</tr>
<tr>
    <td><label for="Sno">06</label></td>
    <td><label for="form-deposite">Deposite of Indane Gas Suraksha Hosr 1.5MT</label></td>
    <td><label for="rate"><%=rates.get(5)%></label></td>
    <td><label for="qty"><%=quatities.get(5)%></label></td>
    <td><label for="total"><%=amount.get(5)%></label></td>
</tr>
<tr>
    <td><label for="Sno">07</label></td>
    <td><label for="form-charges">Administrative Charges</label></td>
    <td><label for="rate"><%=rates.get(6)%></label></td>
    <td><label for="qty"><%=quatities.get(6)%></label></td>
    <td><label for="total"><%=amount.get(6)%></label></td>
</tr>
<tr>
    <td><label for="Sno">08</label></td>
    <td><label  for="form-caps">Damage Regulator Caps</label></td>
    <td><label for="rate"><%=rates.get(7)%></label></td>
    <td><label for="qty"><%=quatities.get(7)%></label></td>
    <td><label for="total"><%=amount.get(7)%></label></td>
</tr>
<tr>
    <td><label for="Sno">09</label></td>
    <td><label  for="form-cta">Administrative Charges seeking Confirmation Of CTA/ITA/TV etc.</label></td>
    <td><label for="rate"><%=rates.get(8)%></label></td>
    <td><label for="qty"><%=quatities.get(8)%></label></td>
    <td><label for="total"><%=amount.get(8)%></label></td>
</tr>
<tr>
    <td><label for="Sno">10</label></td>
    <td><label  for="form-installation">Installation Charges</label></td>
    <td><label for="rate"><%=rates.get(9)%></label></td>
    <td><label for="qty"><%=quatities.get(9)%></label></td>
    <td><label for="total"><%=amount.get(9)%></label></td>
</tr>
<tr>
    <td><label for="Sno">11</label></td>
    <td><label  for="form-indage">Indane Gas Con. Card</label></td>
    <td><label for="rate"><%=rates.get(10)%></label></td>
    <td><label for="qty"><%=quatities.get(10)%></label></td>
    <td><label for="total"><%=amount.get(10)%></label></td>
</tr>
<tr>
    <td><label for="Sno">12</label></td>
    <td><label  for="form-installation">Other Terms</label></td>
    <td><label for="rate"><%=rates.get(11)%></label></td>
    <td><label for="qty"><%=quatities.get(11)%></label></td>
    <td><label for="total"><%=amount.get(11)%></label></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td><label for="add">Total</label></td>
    <td><label for="add"><%= sum%></label></td>
</tr>
<tr>
    <td></td>
    <td><label for="rupee">Rupees in words</label></td>
    <td></td>
    <td><label for="vat">Vat</label></td>
    <td><label for="vat"><%= vatVal%></label></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td><label for="grand">Grand Total</label></td>
    <td><label for="grand"><%= grandtotal%></label></td>
</tr>
<tr>
    <td><label align="right" for="agency">For: Shree Mangalam Indane</label></td>                                                            
    <td><label align="left" for="grand">Customer signature</label></td>
    <td><label align="right" for="grand">Signature</label></td>
</tr>

</table>
<% }
    } catch (Exception e) {
    }
%> 
</body>
</html>
