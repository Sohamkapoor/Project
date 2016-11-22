<%-- 
    Document   : Refill
    Created on : Nov 19, 2016, 10:20:57 AM
    Author     : sohamkapoor
--%>

<%@page import="Datab.Datab"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Refill</title>

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
        <script type="text/javascript">
            $(document).ready(function(){
                var rate= document.getElementById("rate");
                var amt=0;
                alert(rate);
                $("#form-filledcv1").focusout(function(){
                   amt= rate*parseInt($("#form-filledcv1"));
                   $("#form-amt1").val(amt);
                   $("#form-amt1").attr('readonly',true);
               });
         
            $( "#form-filledcv2" ).focusout(function() {
                amt= rate*parseInt($("#form-filledcv2"));
                $("#form-amt2").val(amt);
                $("#form-amt2").attr('readonly',true);}
            );
            $( "#form-filledcv3" ).focusout(function() {
                amt=rate*parseInt($("#form-filledcv3"));
                $("#form-amt3").val(amt);
                $("#form-amt3").attr('readonly',true);
            )};
            $( "#form-filledcv4" ).focusout(function() {
                amt=rate*parseInt($("#form-filledcv4"));
                $("#form-amt4").val(amt);
                $("#form-amt4").attr('readonly',true);
            });
            });
             
        </script>
    </head>
    <body>
             <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Refill Information Sheet</a>
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
                            <h1><strong>Shri Mangalam Indane</strong> Refill Information Sheet </h1>
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

                            <form role="form" action="RefillDisplay.jsp" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Tell us your requirement :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">
                                        <h3>Enter Name Of Customer and choose Delivery Type :</h3>
                                       <% 
                                        Calendar calendar= Calendar.getInstance();
                                        Datab db=new Datab();
                                        String rate="";
                                        String sql="select rate from gasrate where id="+1;
                                        db.rs=db.st.executeQuery(sql);
                                        while(db.rs.next())
                                        {                  
                                            rate= db.rs.getString("rate");                                           
                                        }
                                        if(calendar == null)
                                        {
                                           System.out.println("Calendar ="+ calendar);
                                        }
                                        int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
                                         if(dayOfMonth == 1)
                                         { %>
                                             <input type="text" name="rateofgas" class="rateofgas form-control" id="rateofgas" placeholder="Enter Rate Of Gas"/>
                                             <input type="hidden" value="<%= rate %>" id="rate" name="rate" />
                                        <% }
                                         else  { %>
                                            <input type="hidden" name="hiddengas" class="hiddengas form-control" id="hiddengas" />
                                        
                                                <% } %>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                           <input type="text" name="form-nameoc" placeholder="Enter Name Of Customer" class="form-nameoc form-control" id="form-nameoc" >
                                        </div>
                                        <table border="1px">
                                            <tr>
                                                <th>Refill</th>
                                                <th>Empty CV</th>
                                                <th>Filled CV</th> 
                                                <th>Amount Paid</th>
                                                <th>Amount</th>
                                            </tr>
                                            <tr>
                                                <td><label for="form-counterrefill">Counter Refill </label></td>
                                                <td><input type="text" name="form-emptycv1" placeholder="Empty CV" class="form-emptycv1 form-control" id="form-emptycv1" ></td>
                                                <td><input type="text" name="form-filledcv1" placeholder="Filled CV" class="form-filledcv1 form-control" id="form-filledcv1"></td>
                                                <td><input type="text" name="form-counteramount" placeholder="Amount Paid" class="form-counteramount form-control" id="form-counteramount"></td>
                                                <td><input type="text" name="form-amt1" placeholder="Amount" class="form-amt1 form-control" id="form-amt1" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-homedelivery">Home Delivery </label></td>
                                                <td><input type="text" name="form-emptycv2" placeholder="Empty CV" class="form-emptycv2 form-control" id="form-emptycv2" ></td>
                                                <td><input type="text" name="form-filledcv2" placeholder="Filled Cv" class="form-filledcv2 form-control" id="form-filledcv2" ></td> 
                                                <td><input type="text" name="form-hdamt" placeholder="Amount Paid" class="form-hdamt form-control" id="form-hdamt" ></td>
                                                <td><input type="text" name="form-amt2" placeholder="Amount" class="form-amt2 form-control" id="form-amt2" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-godown">Godown </label></td>
                                                <td><input type="text" name="form-emptycv3" placeholder="Empty CV" class="form-emptycv3 form-control" id="form-emptycv3" ></td>
                                                <td><input type="text" name="form-filledcv3" placeholder="Filled CV" class="form-filledcv3 form-control" id="form-filledcv3" ></td>
                                                <td><input type="text" name="form-gdamt" placeholder="Amount Paid" class="form-gdamt form-control" id="form-gdamt" ></td>
                                                <td><input type="text" name="form-amt3" placeholder="Amount" class="form-amt3 form-control" id="form-amt3" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-village">Village Refill </label></td>
                                                <td><input type="text" name="form-emptycv4" placeholder="Empty CV" class="form-emptycv4 form-control" id="form-emptycv4" ></td>
                                                <td><input type="text" name="form-filledcv4" placeholder="Filled CV" class="form-filledcv4 form-control" id="form-filledcv4" ></td>
                                                <td><input type="text" name="form-villageamt" placeholder="Amount Paid" class="form-villageamt form-control" id="form-villageamt" ></td>
                                                <td><input type="text" name="form-amt4" placeholder="Amount" class="form-amt4 form-control" id="form-amt4" ></td>
                                            </tr>
                                        </table>
                                        <br/>
                                        <button type="button" class="btn" onclick="myfunction();"> Check Amount </button>
                                        <input type="submit" value="submit"/>
                                    </div>
                                </fieldset>
                         </form>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                  


                                    <!-- Javascript -->
                                    <script src="assets/js/jquery-1.11.1.min.js"></script>
                                    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
                                    <script src="assets/js/jquery.backstretch.min.js"></script>
                                    <script src="assets/js/retina-1.1.0.min.js"></script>
                                    <script src="assets/js/scripts.js"></script>

                                    <!--[if lt IE 10]>
                                        <script src="assets/js/placeholder.js"></script>
                                    <![endif]-->

                                    </body>

                                    </html>
