<%-- 
    Document   : NonDomestic
    Created on : Nov 21, 2016, 6:11:55 PM
    Author     : sohamkapoor
--%>

<%@page import="Datab.Datab"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Non Domestic</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
        <script>
            someRow = "<tr> <th id='header1' ></th><th id='header2'></th> </tr>"; // table header 
            chequeRow = "<tr> <th id='head1'></th><th id='head2'></th> <th id='head3'></th> </tr>";
            tdRow = "<tr><td id='td1' align='center'></td> <td id='td2' align='center'></td> </tr>"; // table data
            chequetd = "<tr><td id='tdcheque1' align='center'></td> <td id='tdcheque2' align='center'></td> <td id='tdcheque3' align='center'></td></tr>"; // table data

           

            $(document).ready(function () {
                $("#pickdrop").click(function () {
                    var somehead = "<tr> <th id='header1' ></th><th id='header2'></th><th colspan='2' id='header3'></th><th id='header4'></th> </tr>"; // table header 
                    var subhead = "<tr> <th></th><th></th><th id='cas'></th><th id='che'></th><th></th> </tr>"
                    var cashhead = "<tr> <th id='fill'></th><th id='emp'></th><th id='amt'></th><th id='tot'></th> </tr>";
                    // var chequehead = "<tr> <th id='head1'></th><th id='head2'></th> <th id='head3'></th><th id='head4'></th> </tr>";
                    var sometddata = "<tr><td id='td1' align='center'></td> <td id='td2' align='center'></td> <td id='td3' align='center'></td> <td id='td4' align='center'></td> <td id='td5' align='center'></td> </tr>"; // table data
                    var newtddata = "<tr><td id='tdd1' align='center'></td> <td id='tdd2' align='center'></td> <td id='tdd3' align='center'></td> <td id='tdd4' align='center'></td> </tr>";
                    // var chequetddata = "<tr><td id='tdcheque1' align='center'></td> <td id='tdcheque2' align='center'></td> <td id='tdcheque3' align='center'></td><td id='tdcheque4' align='center'></td></tr>"; // table data
                    var newdiv = document.createElement('table'); //create table
                    newdiv.id = "dynatable";
                    newdiv.setAttribute('border', '1');

                    var cashonly = document.createElement('label'); // label for cash button
                    var cheque = document.createElement('label'); // label for cheque button

                    var newradiocash = document.createElement('input'); // one way deposite radio
                    newradiocash.name = "typeofpayment";
                    newradiocash.type = "radio";
                    newradiocash.value = "cash";
                    newradiocash.id = "cashonly";
                    newradiocash.onclick = function ()
                    {
                        $("#head1").hide();
                        $("#head2").hide();
                        $("#head3").hide();
                        $("#tscheque1").hide();
                        $("#tdcheque2").hide();
                        $("#tdcheque3").hide();
                        $("#header1").hide();
                        $("#header2").hide();
                        $("#header3").hide();
                        $("#header4").hide();
                        $("#cas").hide();
                        $("#che").hide();
                        $("#td1").hide();
                        $("#td2").hide();
                        $("#td3").hide();
                        $("#td4").hide();
                        $("#td5").hide();
                        $("#tdd1").hide();
                        $("#tdd2").hide();
                        $("#tdd3").hide();
                        $("#tdd4").hide();
                        $("#dynatable").append(cashhead);
                        $("#dynatable").append(newtddata);
                        $("#fill").text("Filled Cylinder");
                        $("#emp").text("Empty Cylinder");
                        $("#amt").text("Amount To Pay");
                        $("#tot").text("Amount");
                        $("#form-chequeno").val("0");
                        document.getElementById("tdd1").appendChild(newinput1);
                        document.getElementById("tdd2").appendChild(newinput2);
                        document.getElementById("tdd3").appendChild(newinput5);
                        document.getElementById("tdd4").appendChild(newinput4);
                    };

                    var newradiocheque = document.createElement('input'); //cheque payment radio
                    newradiocheque.name = "typeofpayment";
                    newradiocheque.type = "radio";
                    newradiocheque.value = "cheque";
                    newradiocheque.id = "cheque";
                    newradiocheque.onclick = function ()
                    {
                        $("#fill").hide();
                        $("#emp").hide();
                        $("#amt").hide();
                        $("#tot").hide();
                        $("#tdd1").hide();
                        $("#tdd2").hide();
                        $("#tdd3").hide();
                        $("#tdd4").hide();
                        $("#dynatable").append(somehead);
                        $("#dynatable").append(subhead);
                        $("#dynatable").append(sometddata);
                        $("#header1").text("Filled Cylinder");
                        $("#header2").text("Empty Cylinder");
                        $("#header3").text("Amount To Pay");
                        $("#header4").text("Amount");
                        $("#cas").text("Cash/Cheque Amount");
                        $("#che").text("Cheque");
                        document.getElementById("td1").appendChild(newinput1);
                        document.getElementById("td2").appendChild(newinput2);
                        document.getElementById("td3").appendChild(newinput5);
                        document.getElementById("td4").appendChild(newinput3);
                        document.getElementById("td5").appendChild(newinput4);
                    };

                    var newinput1 = document.createElement('input'); // empty cylinder
                    newinput1.name = "form-filledcv";
                    newinput1.id = "form-filledcv";
                    newinput1.type = "text";
                    newinput1.placeholder = "Enter Number Of Filled Cylinder";

                    var newinput2 = document.createElement('input'); // empty cylinder
                    newinput2.name = "form-emptycv";
                    newinput2.id = "form-emptycv";
                    newinput2.type = "text";
                    newinput2.placeholder = "Enter Number Of Empty Cylinder";

                    var newinput3 = document.createElement('input'); // cheque transaction
                    newinput3.name = "form-chequeno";
                    newinput3.id = "form-chequeno";
                    newinput3.type = "text";
                    newinput3.placeholder = "Enter Cheque Number";

                    var newinput4 = document.createElement('input'); // empty cylinder
                    newinput4.name = "form-amt";
                    newinput4.id = "form-amt";
                    newinput4.type = "text";
                    newinput4.placeholder = "Total";

                    var newinput5 = document.createElement('input'); // amount text box
                    newinput5.name = "counteramount";
                    newinput5.type = "text";
                    newinput5.id = "counteramount";
                    newinput5.placeholder = "Enter Amount to be Paid";

                    var newinput6 = document.createElement('input'); // cash transaction
                    newinput6.name = "typeoftransaction";
                    newinput6.type = "radio";
                    newinput6.value = "two way";

                    document.getElementById("table").appendChild(newdiv); // appending data to table
                    $("#dynatable").append(newradiocash);
                    $("#dynatable").append(cashonly);
                    $("#dynatable").append(newradiocheque);
                    $("#dynatable").append(cheque);
                    cashonly.innerHTML = "Cash Payment";
                    cheque.innerHTML = " Cheque Payment ";
                });

                $("#cash").click(function () {
                    $("#form-filledcv").val("0");
                    $("#form-amt").val("0");

                    var newdiv = document.createElement('table'); //create table
                    newdiv.id = "dynatable";
                    newdiv.setAttribute('border', '1');

                    var cashonly = document.createElement('label'); // label for cash button
                    var cheque = document.createElement('label'); // label for cheque button

                    var newradiocash = document.createElement('input'); // cash deposite only radio
                    newradiocash.name = "typeofpayment";
                    newradiocash.type = "radio";
                    newradiocash.value = "cash";
                    newradiocash.id = "cashonly";
                    newradiocash.onclick = function ()
                    {
                        $("#form-chequeno").val("0");
                        $("#dynatable").append(someRow);
                        $("#dynatable").append(tdRow);
                        $("#header1").text("Amount");
                        $("#header2").text("type");
                        document.getElementById("td1").appendChild(newinput1);
                        document.getElementById("td2").appendChild(newinput2);
                    };

                    var newradiocheque = document.createElement('input'); //cheque payment radio
                    newradiocheque.name = "typeofpayment";
                    newradiocheque.type = "radio";
                    newradiocheque.value = "cheque";
                    newradiocheque.id = "cheque";
                    newradiocheque.onclick = function () {
                        $("#header1").hide();
                        $("#header2").hide();
                        $("#td1").hide();
                        $("#td2").hide();
                        $("#form-chequeno").val("");
                        $("#dynatable").append(chequeRow);
                        $("#dynatable").append(chequetd);
                        $("#head1").text("Amount");
                        $("#head2").text("type");
                        $("#head3").text("Cheque Number");
                        document.getElementById("tdcheque1").appendChild(newinput1);
                        document.getElementById("tdcheque2").appendChild(newinput2);
                        document.getElementById("tdcheque3").appendChild(newinput3);
                    };

                    var newinput1 = document.createElement('input'); // amount text box
                    newinput1.name = "counteramount";
                    newinput1.type = "text";
                    newinput1.placeholder = "Enter Amount to be Paid";


                    var newinput2 = document.createElement('input'); // cash transaction
                    newinput2.name = "typeoftransaction";
                    newinput2.type = "radio";
                    newinput2.value = "cash";

                    var newinput3 = document.createElement('input'); // cheque transaction
                    newinput3.name = "form-chequeno";
                    newinput3.id = "form-chequeno";
                    newinput3.type = "text";
                    newinput3.placeholder = "Enter Cheque Number";

                    document.getElementById("table").appendChild(newdiv);
                    $("#dynatable").append(newradiocash);
                    $("#dynatable").append(cashonly);
                    $("#dynatable").append(newradiocheque);
                    $("#dynatable").append(cheque);
                    cashonly.innerHTML = "Cash Payment";
                    cheque.innerHTML = " Cheque Payment ";
                });

                $("#cvdepo").click(function () {
                    $("#form-filledcv").val("0");
                    $("#form-amt").val("0");
                    $("#form-counteramount").val("0");
                    $("#form-chequeno").val("0");
                    var newdiv = document.createElement('table'); //create table
                    newdiv.id = "dynatable";
                    newdiv.setAttribute('border', '1');

                    var newradiocash = document.createElement('input'); // one way deposite radio
                    newradiocash.name = "typeofpayment";
                    newradiocash.type = "radio";
                    newradiocash.value = "one way";
                    newradiocash.id = "one";
                    newradiocash.checked = "checked";

                    var newinput1 = document.createElement('input'); // amount text box
                    newinput1.name = "form-emptycv";
                    newinput1.id = "form-emptycv";
                    newinput1.type = "text";
                    newinput1.placeholder = "Enter No of Empty Cylinders";

                    document.getElementById("table").appendChild(newdiv);
                    $("#dynatable").append(someRow);
                    $("#dynatable").append(tdRow);
                    $("#header1").text("No. Of Cylinders");
                    $("#header2").text("type");
                    document.getElementById("td1").appendChild(newinput1);
                    document.getElementById("td2").appendChild(newradiocash);
                });

                $("#cashcv").click(function () { // cash and Cylinder Deposite
                    var some = "<tr> <th id='header1' ></th><th id='header2'></th><th id='header3'></th> </tr>"; // table header 
                    var chequeR = "<tr> <th id='head1'></th><th id='head2'></th> <th id='head3'></th><th id='head4'></th> </tr>";
                    var tdR = "<tr><td id='td1' align='center'></td> <td id='td2' align='center'></td><td id='td3' align='center'></td> </tr>"; // table data
                    var chequet = "<tr><td id='tdcheque1' align='center'></td> <td id='tdcheque2' align='center'></td> <td id='tdcheque3' align='center'></td><td id='tdcheque4' align='center'></td></tr>"; // table data
                    var newdiv = document.createElement('table'); //create table
                    newdiv.id = "dynatable";
                    newdiv.setAttribute('border', '1');
                    var rate = document.getElementById("rate"); // get rate from db
                    var cashonly = document.createElement('label'); // label for cash button
                    var cheque = document.createElement('label'); // label for cheque button

                    var newradiocash = document.createElement('input'); // one way deposite radio
                    newradiocash.name = "typeofpayment";
                    newradiocash.type = "radio";
                    newradiocash.value = "cash";
                    newradiocash.id = "cashonly";
                    newradiocash.onclick = function ()
                    {
                        $("#form-filledcv").val("0");
                        $("#form-amt").val("0");
                        $("#form-chequeno").val("0");
                        $("#dynatable").append(some);
                        $("#dynatable").append(tdR);
                        $("#header1").text("Amount");
                        $("#header2").text("type");
                        $("#header3").text("Empty Cylinder");
                        document.getElementById("td1").appendChild(newinput1);
                        document.getElementById("td2").appendChild(newinput2);
                        document.getElementById("td3").appendChild(newinput4);
                    };

                    var newradiocheque = document.createElement('input'); //cheque payment radio
                    newradiocheque.name = "typeofpayment";
                    newradiocheque.type = "radio";
                    newradiocheque.value = "cheque";
                    newradiocheque.id = "cheque";
                    newradiocheque.onclick = function () {
                        $("#form-filledcv").val("0");
                        $("#form-amt").val("0");
                        $("#header1").hide();
                        $("#header2").hide();
                        $("#header3").hide();
                        $("#td1").hide();
                        $("#td2").hide();
                        $("#td3").hide();
                        $("#form-chequeno").val("");
                        $("#dynatable").append(chequeR);
                        $("#dynatable").append(chequet);
                        $("#head1").text("Amount");
                        $("#head2").text("type");
                        $("#head3").text("Cheque Number");
                        $("#head4").text("Empty Cylinder")
                        document.getElementById("tdcheque1").appendChild(newinput1);
                        document.getElementById("tdcheque2").appendChild(newinput2);
                        document.getElementById("tdcheque3").appendChild(newinput3);
                        document.getElementById("tdcheque4").appendChild(newinput4);
                    };
                    var newinput1 = document.createElement('input'); // amount text box
                    newinput1.name = "counteramount";
                    newinput1.type = "text";
                    newinput1.placeholder = "Enter Amount to be Paid";

                    var newinput2 = document.createElement('input'); // cash transaction
                    newinput2.name = "typeoftransaction";
                    newinput2.type = "radio";
                    newinput2.value = "cash";

                    var newinput3 = document.createElement('input'); // cheque transaction
                    newinput3.name = "form-chequeno";
                    newinput3.id = "form-chequeno";
                    newinput3.type = "text";
                    newinput3.placeholder = "Enter Cheque Number";

                    var newinput4 = document.createElement('input'); // empty cylinder
                    newinput4.name = "form-emptycv";
                    newinput4.id = "form-emptycv";
                    newinput4.type = "text";
                    newinput4.placeholder = "Enter Number Of Empty Cylinder";

                    document.getElementById("table").appendChild(newdiv); // appending data to table
                    $("#dynatable").append(newradiocash);
                    $("#dynatable").append(cashonly);
                    $("#dynatable").append(newradiocheque);
                    $("#dynatable").append(cheque);
                    cashonly.innerHTML = "Cash Payment";
                    cheque.innerHTML = " Cheque Payment ";

                });


            });



        </script>
    </head>

    <body>

        <!-- Top menu -->
        <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Consumer Information Sheet</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <span class="li-text">
                                <!--Put some text or-->
                            </span> 
                            <!--a href="#"><strong>links</strong></a--> 
                            <span class="li-text">
                                <!--here, or some icons: -->
                            </span> 
                            <span class="li-social">
                                <a href="#"><i class="fa fa-facebook"></i></a> 
                                <a href="#"><i class="fa fa-twitter"></i></a> 
                                <a href="#"><i class="fa fa-envelope"></i></a> 
                                <a href="#"><i class="fa fa-skype"></i></a>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Shri Mangalam Indane</strong> Non Domestic Customer Information Sheet </h1>
                            <div class="description">
                                <p>
                                    <!--This is a free responsive multi-step registration form made with Bootstrap. 
                                    Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!-->
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">

                            <form role="form" action="NDCustomerEntry.jsp" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p> Tell us your Order : </p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">  
                                        <%
                                            Datab db = new Datab();
                                            String rate = "";
                                            String sql = "select rate from gasrate where id=" + 1;
                                            db.rs = db.st.executeQuery(sql);
                                            while (db.rs.next()) {
                                                rate = db.rs.getString("rate");
                                            }
                                        %>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                            <input type="text" name="form-nameoc" placeholder="Enter Name Of Customer" class="form-nameoc form-control" id="form-nameoc" >
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-phno">Register Phno </label>
                                            <input type="text" name="form-phno" placeholder="Enter Registered Phno" class="form-phno form-control" id="form-phno" >
                                            <input type="text" name="security" placeholder="Enter Security Amount" class="security form-control" id="security" onblur="secure()"/>
                                        </div>



                                        <div class="form-group">
                                            <input type="date" name="datepickers" onkeydown="return false" placeholder="Enter Booking Date dd/mm/yyyy" class="form-dob form-control" id="datepicker">
                                        </div>

                                        <input type="hidden" value="<%= rate%>" id="rate" name="rate" />
                                        <input type="radio" name="onlycv" id="cash" > Cash Deposite Only <br/>
                                        <input type="radio" name="onlycv" id="cvdepo"  > Empty Cylinder only <br/>
                                        <input type="radio" name="onlycv" id="pickdrop"  > Pick and Drop <br/>
                                        <input type="radio" name="onlycv" id="cashcv"  > Cash & Cylinder Deposite Only <br/>
                                        <div id="table"></div>
                                        <!--table border="1px">
                                          
                                            <tr>                                               
                                                <td><input type="text" name="form-filledcv" placeholder="Filled CV" class="form-filledcv form-control" id="form-filledcv" ></td>
                                                <td><input type="text" name="form-emptycv" placeholder="Empty CV" class="form-emptycv form-control" id="form-emptycv" ></td>                                                                                              
                                                <td><p align="center"><input type="radio" name="typeofpayment" id="cashonly" value="cashonly"></p></td>
                                                <td><p align="center"><input type="radio" name="typeofpayment" id="cheque" value="cheque"></p></td>
                                                <td><input type="text" name="form-amt" placeholder="Amount" class="form-amt form-control" id="form-amt" ></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="cashon" value="cash" onclick="checkCash()"></p></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="one" value="one way" onclick="oneWayAgain()"></p></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="two" value="two way" ></p></td>
                                            </tr>

                                        </table--> <br/>

                                        <!--input  type="text" name="form-counteramount" placeholder="Enter Amount" class="form-counteramount form-control" id="form-counteramount">
                                        
                                        <input type="text" name="form-chequeno" placeholder="Enter Cheque Number" class="form-chequeno form-control" id="form-chequeno"> 
                                        <br/>
                                        <!--a href="ShowNDCDetail.jsp">Show Customer Detail</a-->
                                        <button type="button" class="btn btn-Show" >Show N.D.C Detail</button>
                                        <a href="AdvanceNDBooking.jsp">Advance Booking</a>
                                        <input type="submit" value="submit"/>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>




</body>

</html>

