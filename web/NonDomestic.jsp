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
//            function checkCashOnly()
//            {
//                     document.getElementById("cashon").checked=true;
//                   document.getElementById("one").checked=false;
//               
//                
//            }
//            function oneWay()
//            {     document.getElementById("one").checked=true;
//                document.getElementById("cashon").checked=false;
//            
//            }
            /**
             * The below function is applicable for only cash column radio
             * button.
             * @returns {undefined}
             */
            function checkCash()
            {
                document.getElementById("cash").checked = true;
                document.getElementById("cvdepo").checked = false;
                document.getElementById("form-emptycv").readOnly = true;
                document.getElementById("form-chequeno").hide();
                $("#form-emptycv").val(0);
                $("#form-counteramount").val("");
                $("#form-chequeno").val(0);
                $("#form-counteramount").attr('readonly', false);
            }
            function oneWayAgain()
            {
                document.getElementById("form-emptycv").readOnly = false;
                document.getElementById("form-chequeno").show();
                document.getElementById("cash").checked = false;
                document.getElementById("cvdepo").checked = true;
                if (document.getElementById("cheque").checked = true)
                {
                    $("#form-chequeno").val("");
                    $("#form-counteramount").val("");
                }
                else if (document.getElementById("cashonly").checked = true)
                {
                    $("#form-chequeno").val(0);
                    $("#form-counteramount").val("");
                }
                $("#form-emptycv").val(0);

                $("#form-counteramount").attr('readonly', false);
            }

            $(document).ready(function () {
                $("#datepicker").datepicker({dateFormat: 'dd/mm/yy', minDate: 0});
                var rate = document.getElementById("rate");
                $('#form-counteramount').hide();
                $('#form-chequeno').hide();
                $('#form-security').hide();

                $("#cashonly").click(function () {
                    $("#form-counteramount").show();
                    $("#form-chequeno").val(0);
                    $("#form-chequeno").hide();
                });

                $("#cheque").click(function () {
                    $("#form-counteramount").show();
                    $("#form-chequeno").show();
                    $("#form-chequeno").val("");
                });
                $("#form-filledcv").focusout(function () {
                    $("#form-amt").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv").val()));
                    $("#form-amt").attr('readonly', true);

                });
//                $("#one").focusout(function () {
//                    $("#form-emptycv").val(0);
//                    $("#form-emptycv").attr('readonly', true);
//                    
//                })
                $("#cash").click(function () {
                    document.getElementById("cashon").checked = true;
                    document.getElementById("one").checked = false;
                    $("#form-emptycv").val(0);
                    $("#form-filledcv").val(0);
                    $("#form-amt").val(0);
                    $("#form-emptycv").attr('readonly', true);
                    $("#form-filledcv").attr('readonly', true);
                    $("#form-amt").attr('readonly', true);
                    //  $('input:radio[name="typeoftransaction"]').filter('[value="cashon"]').attr('checked', true);
                })
                $("#cvdepo").click(function () {

                    document.getElementById("one").checked = true;
                    document.getElementById("cashon").checked = false;
                    if (document.getElementById("cheque").checked = true)
                    {
                        $("#form-chequeno").val("");
                        $("#form-counteramount").val("");
                        document.getElementById("form-chequeno").show();
                    }
                    else if (document.getElementById("cashonly").checked = true)
                    {
                        $("#form-chequeno").val(0);
                        $("#form-counteramount").val("");
                        document.getElementById("form-chequeno").hide();
                    }
                    $("#form-filledcv").val(0);
                    $("#form-amt").val(0);
                    //  $("#form-counteramount").val(0);
                    //  $("#form-chequeno").val(0);
                    $("#form-filledcv").attr('readonly', true);
                    $("#form-emptycv").attr('readonly', false);
                    $("#form-amt").attr('readonly', true);
                    //   $('input:radio[name="typeoftransaction"]').filter('[value="one way"]').attr('checked', true);
                })

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
                                        </div>
                                        <div class="form-group">
                                            <input type="date" name="datepickers" placeholder="Enter Booking Date dd/mm/yyyy" class="form-dob form-control" id="datepicker">
                                        </div>

                                        <input type="hidden" value="<%= rate%>" id="rate" name="rates" />
                                        <input type="radio" name="onlycv" id="cash" checked="checked"> Only Cash Deposite
                                        <input type="radio" name="onlycv" id="cvdepo"  > C.V Deposite only

                                        <table border="1px">
                                            <tr>
                                                <th>Filled CV</th> 
                                                <th>Empty CV</th>                                                
                                                <th colspan="2">Cash/Cheque Amount</th>                                               
                                                <th>Amount</th>
                                                <th>Cash Only</th>
                                                <th>One Way</th>
                                                <th>Two Way</th>
                                            </tr>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th>Cash </th> 
                                                <th>Cheque </th> 
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                            <tr>                                               
                                                <td><input type="text" name="form-filledcv" placeholder="Filled CV" class="form-filledcv form-control" id="form-filledcv" ></td>
                                                <td><input type="text" name="form-emptycv" placeholder="Empty CV" class="form-emptycv form-control" id="form-emptycv" ></td>                                                                                              
                                                <td><p align="center"><input type="radio" name="typeofpayment" id="cashonly" value="cashonly" checked="checked"></p></td>
                                                <td><p align="center"><input type="radio" name="typeofpayment" id="cheque" value="cheque"></p></td>
                                                <td><input type="text" name="form-amt" placeholder="Amount" class="form-amt form-control" id="form-amt" ></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="cashon" value="cash" onclick="checkCash()"></p></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="one" value="one way" onclick="oneWayAgain()"></p></td>
                                                <td><p align="center"><input type="radio" name="typeoftransaction" id="two" value="two way" ></p></td>
                                            </tr>

                                        </table> <br/>

                                        <input  type="text" name="form-counteramount" placeholder="Enter Amount" class="form-counteramount form-control" id="form-counteramount">
                                        <input type="text" name="form-security" placeholder="Enter Security Amt" class="form-security form-control" id="form-security" value="0">
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

