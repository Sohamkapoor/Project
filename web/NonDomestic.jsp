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

                $(document).ready(function () {
                    var rate = document.getElementById("rate");                    
                    $("#datepicker").datepicker({dateFormat: 'dd/mm/yy', minDate: 0});
                    $('#cash').click(function () {                       
                        $('#cashSelect').show();
                        $('#cylinderDeposite').hide();
                        $('#pickdropCashTrasaction').hide();
                        $('#pickdropChequeTrasaction').hide();
                        $('#cvChequeDeposite').hide();
                        $('#cvCashDeposite').hide();    
                        var e = document.getElementById("registration-form");
                            e.style.width = "580px";
                        $('#cashonly').attr('checked', false);
                        $('#cheque').attr('checked', false);

                        $('#cashonly').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "580px";
                            $('#cashSelect').show();
                            $('#cylinderDeposite').hide();
                            $('#pickdropCashTrasaction').hide();
                            $('#pickdropChequeTrasaction').hide();
                            $('#cvChequeDeposite').hide();
                            $('#cvCashDeposite').hide();
                            $('#chequeDeposite').hide();
                            $("#cashon").attr('checked', true);
                            $("#form-filledcv").val("0");
                            $('#form-advance').val("0");
                            $('#form-advance1').val("0");
                            $("#form-emptycv").val("0");
                            $('#form-discount').val("0");
                            $('#form-discount1').val("0");
                            $('#form-amt').val("0");
                            $('#form-counteramount').val("");
                            $("#form-chequeno").val("0");
                            $('#cashDeposite').show();                           
                        });
                        $('#cheque').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "580px";
                            $('#cashSelect').show();
                            $('#cylinderDeposite').hide();
                            $('#pickdropCashTrasaction').hide();
                            $('#pickdropChequeTrasaction').hide();
                            $('#cvChequeDeposite').hide();
                            $('#cvCashDeposite').hide();
                            $('#cashDeposite').hide();
                            $('#form-counterammount1').val("");
                            $('#cashon1').attr('checked', true);
                            $("#form-filledcv").val("0");
                            $('#form-advance').val("0");
                            $('#form-advance1').val("0");
                            $('#form-discount').val("0");
                            $('#form-discount1').val("0");
                            $("#form-emptycv").val("0");
                            $('#form-amt').val("0");
                            $('#form-chequeno').val("");
                            $('#chequeDeposite').show();                           
                        });
                    });

                    $('#cvdepo').click(function () {
                        var e = document.getElementById("registration-form");
                        e.style.width = "580px";
                        $('#cashSelect').hide();
                        $('#chequeDeposite').hide();
                        $('#cashDeposite').hide();
                        $('#cashSelect').hide();
                        $('#cvChequeDeposite').hide();
                        $('#cvCashDeposite').hide();
                        $('#pickdropCashTrasaction').hide();
                        $('#pickdropChequeTrasaction').hide();
                        $('#one1').attr('checked', true);
                        $('#form-filledcv').val("0");
                        $('#form-amt').val("0");
                        $('#form-advance').val("0");
                        $('#form-advance1').val("0");
                        $('#form-discount').val("0");
                        $('#form-discount1').val("0");
                        $("#form-chequeno").val("0");
                        $('#form-counteramount').val("0");
                        $('#form-emptycv').val("");
                        $('#cylinderDeposite').show();
                    });

                    $('#cashcv').click(function () {                       
                        $('#cylinderDeposite').hide();
                        $('#cashSelect').hide();
                        $('#chequeDeposite').hide();
                        $('#cashDeposite').hide();
                        $('#pickdropCashTrasaction').hide();
                        $('#pickdropChequeTrasaction').hide();
                        $("#form-filledcv").val("0");
                        $('#form-amt').val("0");
                        var e = document.getElementById("registration-form");
                            e.style.width = "580px";
                        $('#cashonly').attr('checked', false);
                        $('#cheque').attr('checked', false);
                        $('#cashSelect').show();
                        $('#cashonly').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "600px";
                            $('#cashSelect').show();
                            $('#cylinderDeposite').hide();
                            $('#chequeDeposite').hide();
                            $('#cashDeposite').hide();
                            $('#pickdropCashTrasaction').hide();
                            $('#pickdropChequeTrasaction').hide();
                            $('#cvChequeDeposite').hide();
                            $('#form-emptycv1').val("");
                            $('#form-counteramount2').val("");
                            $("#form-chequeno2").val("0"); // not working
                            $('#form-advance').val("0");
                            $('#form-advance1').val("0");
                            $('#form-discount').val("0");
                            $('#form-discount1').val("0");
                            $('#one2').attr('checked', true);
                            $('#cvCashDeposite').show();
                            
                        });
                        $('#cheque').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "810px";
                            $('#cashSelect').show();
                            $('#cylinderDeposite').hide();
                            $('#chequeDeposite').hide();
                            $('#cashDeposite').hide();
                            $('#pickdropCashTrasaction').hide();
                            $('#pickdropChequeTrasaction').hide();
                            $('#cvCashDeposite').hide();
                            $("#form-chequeno2").val("");
                            $('#form-advance').val("0");
                            $('#form-advance1').val("0");
                            $('#form-discount').val("0");
                            $('#form-discount1').val("0");
                            $('#form-emptycv3').val("");
                            $('#form-counteramount3').val("");
                            $('#one3').attr('checked', true);
                            $('#cvChequeDeposite').show();
                            
                        });
                    });

                    $('#pickdrop').click(function () {
                        $('#cvChequeDeposite').hide();
                        $('#cvCashDeposite').hide();
                        $('#cylinderDeposite').hide();
                        $('#cashDeposite').hide();
                        var e = document.getElementById("registration-form");
                            e.style.width = "580px";
                        $('#chequeDeposite').hide();
                        $('#cashonly').attr('checked', false);
                        $('#cheque').attr('checked', false);
                        $('#cashSelect').show();
                        
                        $('#cashonly').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "760px";
                            $('#cashSelect').show();
                            $('#cvChequeDeposite').hide();
                            $('#cvCashDeposite').hide();
                            $('#cylinderDeposite').hide();
                            $('#cashDeposite').hide();
                            $('#chequeDeposite').hide();
                            $('#pickdropChequeTrasaction').hide();
                            $("#form-chequeno5").val("0"); // not working
                            $('#two').attr('checked', true);
                            $('#form-filledcv').val("");
                            $('#form-emptycv4').val("");
                            $('#form-advance').val("");
                            $('#form-discount').val("");
                            $('#form-counteramount4').val("");
                            $('#form-amt').val("");
                            $('#pickdropCashTrasaction').show();                           
                        });

                        $('#cheque').click(function () {
                            var e = document.getElementById("registration-form");
                            e.style.width = "860px";
                            $('#cashSelect').show();
                            $('#cvChequeDeposite').hide();
                            $('#cvCashDeposite').hide();
                            $('#cylinderDeposite').hide();
                            $('#cashDeposite').hide();
                            $('#chequeDeposite').hide();
                            $('#pickdropCashTrasaction').hide();
                            $('#form-filledcv1').val("");
                            $('#form-emptycv5').val("");
                            $('#form-counteramount5').val("");
                            $('#form-advance1').val("");
                            $('#form-discount1').val("");
                            $('#form-amt1').val("");
                            $("#form-chequeno5").val("");
                            $('#twocheque').attr('checked', true);
                            $('#pickdropChequeTrasaction').show();                          
                        });
                        $('#form-filledcv1').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filledcv1").value;
                            var amount = amt * rate;
                            $('#form-amt1').val(amount);
                        });
                        $('#form-filled').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filled").value;
                            var amount = amt * rate;
                            $('#form-amt').val(amount);
                        });
                        $('#form-advance').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filled").value;
                            var adv = document.getElementById("form-advance").value;
                            if(adv === ""){
                            $('#erradvance').text("advance cannot be empty");    
                            adv=0;}
                            var amount = ((amt * rate)-adv);
                            $('#form-amt').val(amount);
                        });
                        $('#form-advance').focusin(function () {
                            $('#erradvance').text("");
                        });
                        $('#form-advance1').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filledcv1").value;
                            var adv = document.getElementById("form-advance1").value;
                            if(adv === ""){
                            $('#erradvance1').text("advance cannot be empty");
                            adv =0;    }
                            var amount = ((amt * rate)-adv);
                            $('#form-amt1').val(amount);
                        });
                        $('#form-advance1').focusin(function () {
                            $('#erradvance1').text("");
                        });
                        $('#form-discount').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filled").value;
                            var adv = document.getElementById("form-advance").value;
                            var dis = document.getElementById("form-discount").value;
                            if(adv === ""){adv=0;}
                            if(dis === ""){dis=0;}
                            var amount = ((amt * rate)-adv-dis);
                            $('#form-amt').val(amount);
                        });
                        $('#form-discount1').focusout(function () {
                            var rate = document.getElementById("rate").value;
                            var amt = document.getElementById("form-filledcv1").value;
                            var adv = document.getElementById("form-advance1").value;
                            var dis = document.getElementById("form-discount1").value;
                            if(adv === ""){adv=0;}
                            if(dis === ""){dis=0;}
                            var amount = ((amt * rate)-adv-dis);
                            $('#form-amt1').val(amount);
                        });
                        $('#form-counteramount4').focusout(function(){
                            var amt = document.getElementById("form-counteramount4").value;
                            var am = document.getElementById("form-amt").value;
                            if(amt > am)
                            {
                                $('#form-counteramount4').val("");
                                $('#errcounteramount4').text("Cannot pay more than bill amount");
                            }                            
                        });
                        $('#form-counteramount4').focusin(function(){
                            $('#errcounteramount4').text("");
                        });
                         $('#form-counteramount5').focusout(function(){
                            var amt = document.getElementById("form-counteramount5").value;
                            var am = document.getElementById("form-amt1").value;
                            if(amt > am)
                            {
                                $('#form-counteramount5').val("");
                                $('#errcounteramount5').text("Cannot pay more than bill amount");
                            }                            
                        });
                        $('#form-counteramount5').focusin(function(){
                            $('#errcounteramount5').text("");
                        });
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

                            <form role="form" action="NDCustomerEntry" method="post" id="registration-form" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p> Tell us about your Non Domestic Order : </p>
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
                                                System.out.println("rate =" + rate);
                                            }
                                        %>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                            <input type="text" name="form-nameoe" placeholder="Enter Name Of Employee" class="form-nameoe form-control" id="form-nameoe" >
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                            <input type="text" name="form-nameoc" placeholder="Enter Name Of Customer" class="form-nameoc form-control" id="form-nameoc" >
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                            <input type="text" name="form-customer-address" placeholder="Enter Customer Address" class="form-customer-address form-control" id="form-customer-address" >
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
                                        <input type="radio" name="onlycv" id="cash" onclick="cashDepoOnly()" value="cash"> Cash Deposite Only <br/>
                                        <input type="radio" name="onlycv" id="cvdepo" onclick="cylinderDepoOnly()" value="cvdepo" > Empty Cylinder only <br/>
                                        <input type="radio" name="onlycv" id="pickdrop" onclick="pickdrop()" value="pickdrop"> Pick and Drop <br/>
                                        <input type="radio" name="onlycv" id="cashcv" onclick="cashcvDepo()" value="cashcv"> Cash & Cylinder Deposite Only <br/>
                                        <br/>
                                        <!-- === Common Selector === -->
                                        <div id="cashSelect" hidden="true">
                                            <table border="1px">
                                                <tr>
                                                    <th> Cash Deposite </th>
                                                    <th> Cheque Deposite </th>
                                                </tr>
                                                <tr>
                                                    <td align="center"> <input type="radio" id="cashonly" name="typeofpayment" value="cashonly">Cash Only </td>
                                                    <td align="center"> <input type="radio" id="cheque" name="typeofpayment" value="cheque">Cheque </td>
                                                </tr>
                                            </table>    
                                        </div> <br/>
                                        <div id="abstract">
                                            <!-- === Cash Deposite === -->
                                            <section id="cashDeposite" hidden ="true">
                                                <table border="1px" >
                                                    <tr>
                                                        <th>&nbsp; Amount &nbsp;</th>
                                                        <th>&nbsp; Type &nbsp;</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-counteramount" placeholder="Enter Amount" name="form-counteramount"> </td>
                                                        <td align="center"> <input type="radio"  name="cashon" value="cash" id="cashon"> </td>
                                                    </tr>                                               
                                                </table>
                                            </section>
                                            <!-- === Cheque Deposite === -->
                                            <section id="chequeDeposite" hidden="true">
                                                <table border="1px" >
                                                    <tr>
                                                        <th>Amount</th>
                                                        <th>Type</th>
                                                        <th>ChequeNo</th> 
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-counteramount1" placeholder="Enter Cheque Amount" name="form-counteramount1"> </td>
                                                        <td align="center"> <input type="radio"  name="cashon1" value="cash" id="cashon1"> </td>
                                                        <td><input type="text" placeholder="Enter Cheque No" name="form-chequeno" id="form-chequeno"></td>
                                                    </tr>                                               
                                                </table>
                                            </section>
                                            <!-- === Cash Deposite Complete === === Start Of Cylinder Deposite === -->
                                            <section id="cylinderDeposite" hidden="true">
                                                <table border="1px" >
                                                    <tr>
                                                        <th>&nbsp; Empty Cylinder &nbsp;</th>
                                                        <th>&nbsp; Type &nbsp;</th> 
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-emptycv" placeholder="Enter No Of Empty Cylinders" name="form-emptycv"> </td>
                                                        <td align="center"> <input type="radio"  name="one1" value="one way" id="one1" > </td>                                                    
                                                    </tr>                                               
                                                </table>
                                            </section> <!-- === Cylinder Deposite over === -->
                                            <!-- === Cylinder and cash deposite === -->
                                            <section id="cvCashDeposite" hidden="true"> <!-- === Cash Payment === -->
                                                <table border="1px" >
                                                    <tr>
                                                        <th>&nbsp; Empty Cylinder &nbsp;</th>
                                                        <th>&nbsp; Type &nbsp;</th>
                                                        <th>&nbsp; Amount &nbsp;</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-emptycv1" placeholder="Enter No Of Empty Cylinders" name="form-emptycv1"> </td>
                                                        <td align="center"> <input type="radio"  name="one2" value="one way" id="one2" > </td>
                                                        <td> <input type="text" id="form-counteramount2" name="form-counteramount2" placeholder="Enter Amount"></td>
                                                    </tr>
                                                </table>
                                            </section>
                                            <section id="cvChequeDeposite" hidden="true"> <!-- === Cheque Payment === -->
                                                <table border="1px" >
                                                    <tr>
                                                        <th>Empty Cylinder</th>
                                                        <th>Type</th>
                                                        <th>Amount</th>
                                                        <th>Cheque Number</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-emptycv3"  placeholder="Enter No Of Empty Cylinders" name="form-emptycv3" > </td>
                                                        <td align="center"> <input type="radio"  name="one3" value="one way" id="one3" > </td>
                                                        <td> <input type="text" id="form-counteramount3" name="form-counteramount3" placeholder="Enter Amount"></td>
                                                        <td> <input type="text" id="form-chequeno2" name="form-chequeno2" placeholder="Enter Cheque no" ></td>
                                                    </tr>
                                                </table>
                                            </section> <!-- === Cash and CV Deposite Complete === -->
                                            <!-- === Pick and Drop Start === -->
                                            <section id="pickdropCashTrasaction" class="pickdropCashTrasaction" hidden="true"> <!-- === Pick And Drop Cash === -->
                                                <table border="1px" >
                                                    <tr>
                                                        <th>Filled Cylinder</th>
                                                        <th>Empty Cylinder</th>
                                                        <th>Type</th>
                                                        <th>Advance Amount</th>
                                                        <th> Discount </th>
                                                        <th>Amount Paid</th>
                                                        <th>Amount</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-filled" placeholder="Enter No Of Filled Cylinders" name="form-filled" style="width:120px;"> </td>
                                                        <td> <input type="text" id="form-emptycv4" placeholder="Enter No Of Empty Cylinders" name="form-emptycv4" style="width:120px;" > </td>
                                                        <td align="center"> <input type="radio"  name="two" value="two way" id="two"> </td>                                                        
                                                        <td> <input type="text" id="form-advance" name="form-advance" placeholder="Enter Advance Amount" style="width:120px;" ><span  style="color:red;" id="erradvance"></span></td>
                                                        <td> <input type="text" id="form-discount" name="form-discount" placeholder="Enter Discount Amount" style="width:120px;" ></td>
                                                        <td> <input type="text" id="form-counteramount4" name="form-counteramount4" placeholder="Enter Amount" style="width:120px;" ><span  style="color:red;" id="errcounteramount4"></span></td>
                                                        <td> <input type="text" id="form-amt" placeholder="Enter No Of Empty Cylinders" name="form-amt" style="width:120px;"> </td>
                                                    </tr>
                                                </table>
                                            </section>
                                            <section id="pickdropChequeTrasaction" hidden="true"><!-- === Pick And Drop Cheque === -->
                                                <table border="1px" >
                                                    <tr>
                                                        <th>Filled Cylinder</th>
                                                        <th>Empty Cylinder</th>
                                                        <th>Type</th>                                                        
                                                        <th>Advance Amount </th>
                                                        <th> Discount </th>
                                                        <th>Amount Paid</th>
                                                        <th>Amount</th>
                                                        <th>Cheque Number</th>
                                                    </tr>
                                                    <tr>
                                                        <td> <input type="text" id="form-filledcv1" placeholder="Enter No Of Filled Cylinders" name="form-filledcv1" style="width:120px;"> </td>
                                                        <td> <input type="text" id="form-emptycv5" placeholder="Enter No Of Empty Cylinders" name="form-emptycv5" style="width:120px;"> </td>
                                                        <td align="center"> <input type="radio"  name="twocheque" value="two way" id="twocheque" > </td>                                                        
                                                        <td> <input type="text" id="form-advance1" name="form-advance1" placeholder="Enter Advance Amount" style="width:120px;" ><span  style="color:red;" id="erradvance1"></span></td>
                                                        <td> <input type="text" id="form-discount1" name="form-discount1" placeholder="Enter Discount Amount" style="width:120px;" ></td>
                                                        <td> <input type="text" id="form-counteramount5" name="form-counteramount5" placeholder="Enter Amount" style="width:120px;"><span  style="color:red;" id="errcounteramount5"></span></td>
                                                        <td> <input type="text" id="form-amt1" placeholder="Enter No Of Empty Cylinders" name="form-amt1" style="width:120px;"> </td>
                                                        <td> <input type="text" id="form-chequeno5" name="form-chequeno5" placeholder="Enter Cheque no" style="width:120px;"></td>
                                                    </tr>
                                                </table>
                                            </section>
                                            <!-- === Pick and Drop end === -->
                                        </div><!-- === abstract over === -->
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

