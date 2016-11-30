<%-- 
    Document   : Miscellaneous_exp
    Created on : Nov 30, 2016, 2:38:44 AM
    Author     : sohamkapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Miscellaneous Expenses</title>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/new_connection.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>


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


        <!--        <script>
                    $(document).ready(function () {
                        $("#datepicker").datepicker({dateFormat: 'mm/dd/yy',
                            changeMonth: true,
                            changeYear: true,
                            yearRange: '-100y:c+nn',
                            maxDate: '-1d'});
                    });
                </script>-->
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
                            <h1><strong>Shri Mangalam Indane</strong> Customer Information Sheet </h1>
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

                            <form role="form" action="Miscellaneous" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Miscellaneous Expenses :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">
                                        
                                         <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name </label>
                                            <input type="text" name="form-tea" placeholder="Tea/Cofee Snacks" class="form-tea form-control" id="form-tea" >
                                         </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name </label>
                                            <input type="text" name="form-petrol" placeholder="Petrol" class="form-petrol form-control" id="form-petrol" >
                                         </div>
                                        <div class="form-group">
                                            <input type="text" name="form-vehicleno" placeholder="Vehicle No" class="form-vehicleno form-control" id="form-vehicleno" >
                                            <input type="text" name="form-pickup" placeholder="Pickup K.M" class="form-pickup form-control" id="form-pickup" >
                                            <input type="text" name="form-drop" placeholder="Drop K.M" class="form-drop form-control" id="form-drop" >
                                         </div>
                                         <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name </label>
                                            <input type="text" name="form-repairing" placeholder="Repairing Charges" class="form-repairing form-control" id="form-repairing" >
                                         </div>
                                         <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name </label>
                                            <input type="text" name="form-bank" placeholder="Bank" class="form-bank form-control" id="form-bank" >
                                         </div>
                                         <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name </label>
                                            <input type="text" name="form-extra" placeholder="Extra Expenses" class="form-extra form-control" id="form-extra" >
                                         </div>
                                        <div class="form-group">
                                            <input type="text" name="form-adv" placeholder="Employee Name asking Advance" class="form-adv form-control" id="form-adv" >
                                            <input type="text" name="form-phno" placeholder=" Enter Employee Registered Phone Number " class="form-phno form-control" id="form-phno" >
                                            <input type="text" name="form-advamt" placeholder="Advance Amount" class="form-advamt form-control" id="form-advamt" >
                                         </div>
                                        <p align="center"><input type="submit" value="submit"/></p>
                                    </div>
                                </fieldset>
                                        
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>





    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>
