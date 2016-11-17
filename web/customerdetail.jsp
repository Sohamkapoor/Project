<%-- 
    Document   : customerdetail
    Created on : Nov 16, 2016, 11:20:57 AM
    Author     : sohamkapoor
--%>
%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Customer</title>
         
        <script>
            p.declaration 
    {
    width: 768px;
    word-wrap: break-word;
    }
        </script>
    </head>
    <body>
        <%
            try{
           /* String salutation = request.getParameter("salutation");
            String fname = request.getParameter("form-first-name");
            String mname = request.getParameter("middle-name");
            String lname = request.getParameter("form-last-name");
            String customername = fname+" "+mname+" "+lname;
            String dob = request.getParameter("form-dob");
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
            String dl= request.getParameter("form-dlno");
            String ration = request.getParameter("form-rationno");
            String voter = request.getParameter("form-voterno");
            String state = request.getParameter("form-stateid");
            String stove = request.getParameter("form-stove");*/
            String[] id = request.getParameterValues("form-document");
            String idselected="";
            String idnumber = ""; 
            String salutation = request.getParameter("salutation");
            String customername=request.getParameter("customername");
            String dob= request.getParameter("dob");
            String father= request.getParameter("father");
            String mother= request.getParameter("mother");
            String spouse = request.getParameter("spouse");
            String address = request.getParameter("address");
            String pincode = request.getParameter("pincode");
            String telephone = request.getParameter("telephone");
            String mob = request.getParameter("mobile");
            String email = request.getParameter("email");
            String bank = request.getParameter("bank");
            String branch = request.getParameter("branch");
            String ifsc = request.getParameter("ifsc");
            String acc = request.getParameter("accno");
            String adharno = request.getParameter("adharno");
            String pan = request.getParameter("pan");
            String passport = request.getParameter("passport");
            String dl= request.getParameter("dl");
            String ration = request.getParameter("ration");
            String voter = request.getParameter("voter");
            String state= request.getParameter("state");
            String stove= request.getParameter("stove");
           // if(passport==null){passport="";}
        %>
        <table border="1px">
        <tr> <td> <h3>Customer Joining Date :</h3></td><td> <%= new java.util.Date() %></td></tr>
        <tr> <td> <h3>Salutation :</h3></td><td> <%= salutation %></td></tr>
        <tr> <td> <h3>Name :</h3></td><td> <%= customername %></td></tr>
        <tr> <td><h3>Date Of Birth :</h3></td><td> <%= dob %></td></tr>
        <tr> <td><h3>Father's Name :</h3></td><td> <%= father %></td></tr>
        <tr> <td><h3>Mother's Name :</h3></td><td> <%= mother %></td></tr>
        <% if(spouse.equals("")){} else{%>
        <tr> <td><h3>Spouse Name :</h3></td><td> <%= spouse %><%}%></td></tr>
        <tr> <td><h3>Customer address :</h3></td><td> <%= address %></td></tr>
        <tr> <td> <h3> PinCode :</h3> </td> <td> <%= pincode %> </td></tr>
        <% if(telephone.equals("")){} else{%>
        <tr> <td> <h3>Telephone :</h3> </td><td><%= telephone %><%}%></td></tr>
        <tr> <td><h3>Mobile Number:</h3></td><td> <%= mob %></td></tr>
        <% if(email.equals("")){} else{%>
        <tr> <td><h3>Email ID :</h3></td><td> <%= email %><%}%></td></tr>
        <% if(bank.equals("")){} else{%>
        <tr> <td><h3>Bank Name :</h3></td><td> <%= bank %><%}%></td></tr>
        <% if(branch.equals("")){} else{%>
        <tr> <td><h3>Branch & Address :</h3></td><td> <%= branch %><%}%></td></tr>
        <% if(ifsc.equals("")){} else{%>
        <tr> <td><h3>IFSC Code :</h3></td><td> <%= ifsc %><%}%></td></tr>
        <% if(acc.equals("")){} else{%>
        <tr> <td><h3>Account Number :</h3></td><td> <%= acc %><%}%></td></tr>
        <% if(adharno.equals("")){} else{%>
        <tr> <td><h3>Adhar Number :</h3></td><td> <%= adharno %><%idnumber= idnumber+" "+adharno;}%></td></tr>
        <% if(pan.equals("")){} else{%>
        <tr> <td><h3>Pan Number :</h3></td><td> <%= pan %><%idnumber= idnumber+" "+pan;}%></td> </tr>
        <% if(dl.equals("")){} else{%>
        <tr> <td><h3>Driving Licence :</h3></td><td> <%= dl %><%idnumber= idnumber+" "+dl;}%></td></tr>
        <% if(ration.equals("")){} else{%>
        <tr> <td><h3>Ration Card :</h3> </td><td> <%= ration %><%idnumber= idnumber+" "+ration;}%></td></tr>
         <% if(passport.equals("")){} else{%>
        <tr> <td><h3>Passport Number :</h3> </td><td> <%= passport %><%idnumber= idnumber+" "+passport;}%></td></tr>
        <% if(voter.equals("")){} else{%>
        <tr> <td><h3>Voter ID :</h3> </td><td><%= voter %><%idnumber= idnumber+" "+voter;}%></td></tr>
        <% if(state.equals("")){} else{%>
        <tr> <td><h3>State & Central ID :</h3></td><td> <%= state %><%idnumber= idnumber+" "+state;}%></td></tr>
       <% try{
            for(int i=0;i<id.length;i++)
            {%>
            <tr><td><h3>ID Submitted :</h3></td><td><%= id[i]%></td></tr>
           <% idselected = idselected+" "+id[i];
            }
           
            }catch(NullPointerException f)
            {%><script> alert("No check box selected");</script><%}%>
           
        </table>
        <h2 align="center">Declaration</h2>
        <p class="declaration"><font size="2">I declare that the information provided by me on the above form is true and correct to the best of
            my knowledge and belief.I also confirm that in the event of any information provided by me is not true and incomplete
            and also in the event of any violation of Government Regulation<br/> related to the supply and distributor of LPG, IOCL
            will be well within its right to take necessary action including discontinuation of supply of LPG cylinders,
            can forfeit the security<br/> deposit and can levy panel charges as per the policy and guidelines. I am willing/not
            willing to avail the subsidy on LPG cylinders therefore I have provided/not provided my Bank account details on the above request form.</font></p><br/>
        <br/> Name : <%= customername + " "+" "%>  <p align="right">Signature Of Customer : </p> 
        <p>Date : <%= new java.util.Date()%></p>
         
        <p style="page-break-after:always;"></p>
        <h3 align="center">Format for Declaration</h3>
        <p align="center">(To be submitted by persons desirous of New LPG connection or connection against Termination Voucher)</p>
        <h3 align="center">Declaration</h3>
        <p class="declaration"><font size="3">I <%= customername %> Son/Daughter Of <%= father %> Age <% /* age */%> Years. resident of <%= address%>
  desire to take domestic LPG connection in my name and affirm as under.<br/>
  1) That I am an Indian citizen/Non Resident Indian/Staff of Foreign nationality serving in India/ Foreign 
     national residing in India under valid visa/ person returning to India of transfer of residence basis/PIO.<br/>
     * Tick whichever is applicable. Only Indian citizens are eligible for subsidized LPG.<br/>
  2) That my date of birth is <%= dob %>(LPG connection cannot be provided to a person under 18yrs of age).<br/>
  3) That neither I, nor any other member of the household(household means a family consisting of husband, wife, unmarried 
     children and dependent parents living together in a dwelling unit having common kitchen), possess any LPG connection 
     from PSU Oil Companies or piped Natural Gas Connection for domestic use in our dwelling unit.<br/>
  4) @ That I am enclosing a copy of Ration Card number <%= ration %> including my name.<br/>
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
   Date: <%= new java.util.Date() %> <p align="right"> Signature Of person giving the Declaration</p><br/>
   Place:   <p align="right">Name: <%= customername %></p>
  
    <%
    if(stove.equals("no"))
                {%>
                <p style="page-break-after:always;"></p>
                <h4 align="center"> Shri Mangalam Indane</h4>
                <h3 align="center">C-66 B.K. Kaul, Haribhau Upadhaya Nagar, Ajmer </h3>
                <p> Before providing Gas Connection for security reasons quality testing report by mechanic of consumer gas stove and kitchen is as follows</p><br/>
                Number : ________ <p align="right">Date :- <%= new java.util.Date() %></p><br/>
                Shri/Miss <%= customername%> date of birth <%= dob %> address <%= address %><br/>
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
                else{}
           /* connection.connection con= new connection.connection();
            String sql="insert into new_cust (salutation,name,dob,fathername,mothername,spousename,address,pincode,telephone,mobile,email,bankname,bankaddress,ifsc,accno,idsubmitted,idnumber,purchase)values"
                    + "('"+salutation+"','"+customername+"','"+dob+"','"+father+"','"+mother+"','"+spouse+"','"+address+"','"+pincode+"','"+telephone+"','"+mob+"','"+email+"','"+bank+"','"+branch+"',"
                    + "'"+ifsc+"','"+acc+"','"+idselected+"','"+idnumber+"','"+stove+"')";
            int i=con.stmt.executeUpdate(sql);*/
          }catch(Exception e){}  
        %>
    </body>
</html>


