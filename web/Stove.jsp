<%-- 
    Document   : Stove
    Created on : Dec 23, 2016, 11:05:52 PM
    Author     : sohamkapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Factory</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>

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
    <script>
        $(document).ready(function () {
            var e = document.getElementById("registration-form");
            e.style.width = "600px";
            $('#factory').click(function(){
                $('#form-group').show();
                $('#stove').show(); 
                $('#selling').hide();
            });
            $('#sell').click(function(){
                $('#form-group').show();
                $('#stove').hide();
                $('#selling').show();
            });
        });
        
        
        counter = 1;
        limit = 5;
        var s;
        function count() {

            newdiv = "";
            if (counter == limit)
            {
                alert("No more fields can be inserted");
            } else {
                if (counter == 1)
                {
                    s = document.getElementById("registration-form");
                    s.style.width = "640px";
                }
                if (counter == 2)
                {
                    s = document.getElementById("registration-form");
                    s.style.width = "720px";
                }
                if (counter == 3)
                {
                    s = document.getElementById("registration-form");
                    s.style.width = "800px";
                }
                if (counter == 4)
                {
                    s = document.getElementById("registration-form");
                    s.style.width = "890px";
                }
                if(document.getElementById("factory").checked === true)
                {
                    element = prompt("Please enter your Product Name");
                    if(element === "" || element === "undefined")
                    {
                    element = prompt("Please enter some value"); 
                    newdiv = document.createElement("label");
                    newdiv.setAttribute("for", element);
                    newdiv.innerHTML = element;
                    $('#count1111'+counter).show();
                    document.getElementById("count1111" + counter).appendChild(newdiv);

                    newdiv = document.createElement("input");
                    newdiv.type = "text";
                    newdiv.id = "counter" + counter;
                    newdiv.name = "counter" + counter;
                    newdiv.style.width = "80px";
                    newdiv.style.height = "50px";
                    newdiv.placeholder = "enter" + element + "quantity";
                    $('#counter1111'+counter).show();
                    document.getElementById("counter1111" + counter).appendChild(newdiv);
                    counter++;
                    }
                    else
                    {
                    newdiv = document.createElement("label");
                    newdiv.setAttribute("for", element);
                    newdiv.innerHTML = element;
                    $('#count1111'+counter).show();
                    document.getElementById("count1111" + counter).appendChild(newdiv);

                    newdiv = document.createElement("input");
                    newdiv.type = "text";
                    newdiv.id = "counter" + counter;
                    newdiv.name = "counter" + counter;
                    newdiv.style.width = "80px";
                    newdiv.style.height = "50px";
                    newdiv.placeholder = "enter" + element + "quantity";
                    $('#counter1111'+counter).show();
                    document.getElementById("counter1111" + counter).appendChild(newdiv);
                    counter++;
                    }
                }
                else if(document.getElementById("sell").checked === true)
                {
                    element = prompt("Please enter your Product Name");
                    if(element === "" || element === "undefined")
                    {
                    element = prompt("Please enter some value"); 
                    newdiv = document.createElement("label");
                    newdiv.setAttribute("for", element);
                    newdiv.innerHTML = element;
                    $('#count111'+counter).show();
                    document.getElementById("count111" + counter).appendChild(newdiv);

                    newdiv = document.createElement("input");
                    newdiv.type = "text";
                    newdiv.id = "counter11" + counter;
                    newdiv.name = "counter11" + counter;
                    newdiv.style.width = "80px";
                    newdiv.style.height = "50px";
                    newdiv.placeholder = "enter" + element + "quantity";
                    $('#counter111'+counter).show();
                    document.getElementById("counter111" + counter).appendChild(newdiv);
                    counter++;
                    }
                    else{
                    newdiv = document.createElement("label");
                    newdiv.setAttribute("for", element);
                    newdiv.innerHTML = element;
                    $('#count111'+counter).show();
                    document.getElementById("count111" + counter).appendChild(newdiv);

                    newdiv = document.createElement("input");
                    newdiv.type = "text";
                    newdiv.id = "counter11" + counter;
                    newdiv.name = "counter11" + counter;
                    newdiv.style.width = "80px";
                    newdiv.style.height = "50px";
                    newdiv.placeholder = "enter" + element + "quantity";
                    $('#counter111'+counter).show();
                    document.getElementById("counter111" + counter).appendChild(newdiv);
                    counter++;
                    }
                }
            }

        };
    </script>

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

                            <form role="form" action="Stove" method="post" class="registration-form" id="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p> Enter Your Stove Details :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-database"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom"> 
                                        <input type="radio" name="type" id="sell" value="sell"/> Sell
                                        <input type="radio" name="type" id="factory" value="godown"/> Factory
                                        <div class="form-group" id="form-group" hidden="true">
                                            <!-- === add form here === -->                                            
                                            <table id="stove" border="1px solid">
                                                <tr>
                                                    <th> &nbsp; Stove 197 &nbsp; </th>
                                                    <th> &nbsp; Stove 199 &nbsp; </th>
                                                    <th> &nbsp; PR &nbsp; </th>
                                                    <th> &nbsp; 1.5 Pipe &nbsp; </th>
                                                    <th> &nbsp; CY &nbsp; </th>
                                                    <th> &nbsp; Dairy &nbsp; </th>
                                                    <th id="count11111" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count11112" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count11113" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count11114" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                </tr>
                                                <tr>
                                                    <td><input type="number" name="stove1975" id="stove1975" placeholder="Enter Quantity" style="width:98px; height:50px;"></td>
                                                    <td><input type="number" name="stove1990" id="stove1990" placeholder="Enter Quantity"style="width:98px; height:50px;"></td>
                                                    <td><input type="number" name="pr" id="pr" placeholder="PR"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="1.5pipe" id="1.5pipe" placeholder="Enter Pipe"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="cy" id="cy" placeholder="Enter CY"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="dairy" id="dairy" placeholder="Enter Dairy"style="width:80px; height:50px;"></td>
                                                    <td id="counter11111" style="width:98px;" hidden="true"></td>
                                                    <td id="counter11112" style="width:98px;" hidden="true"></td>
                                                    <td id="counter11113" style="width:98px;" hidden="true"></td>
                                                    <td id="counter11114" style="width:98px;" hidden="true"></td>
                                                </tr>
                                            </table>
                                            
                                            <table id="selling" border="1px">
                                                <tr>
                                                    <th> &nbsp; Stove 1975 &nbsp; </th>
                                                    <th> &nbsp; Stove 1990 &nbsp; </th>
                                                    <th> &nbsp; PR &nbsp; </th>
                                                    <th> &nbsp; 1.5 Pipe &nbsp; </th>
                                                    <th> &nbsp; CY &nbsp; </th>
                                                    <th> &nbsp; Dairy &nbsp; </th>
                                                    <th id="count1111" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count1112" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count1113" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                    <th id="count1114" style="width:98px;" hidden="true"> &nbsp;  &nbsp; </th>
                                                </tr>
                                                <tr>
                                                    <td><input type="number" name="stove197" id="stove197" placeholder="Enter Quantity" style="width:98px; height:50px;"></td>
                                                    <td><input type="number" name="stove199" id="stove199" placeholder="Enter Quantity"style="width:98px; height:50px;"></td>
                                                    <td><input type="number" name="prsell" id="prsell" placeholder="PR"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="pipe1.5" id="pipe1.5" placeholder="Enter Pipe"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="cysell" id="cysell" placeholder="Enter CY"style="width:80px; height:50px;"></td>
                                                    <td><input type="number" name="dairysell" id="dairysell" placeholder="Enter Dairy"style="width:80px; height:50px;"></td>
                                                    <td id="counter1111" style="width:98px;" hidden="true"></td>
                                                    <td id="counter1112" style="width:98px;" hidden="true"></td>
                                                    <td id="counter1113" style="width:98px;" hidden="true"></td>
                                                    <td id="counter1114" style="width:98px;" hidden="true"></td>
                                                </tr>
                                            </table>
                                        </div>
                                        
                                        <input type="button" value="Add" onclick="count();">
                                    </div>
                                </fieldset>
                            </form>
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

