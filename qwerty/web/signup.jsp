<%-- 
    Document   : signup
    Created on : May 7, 2016, 2:22:00 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ResourceBundle"%>


<html>
    <head>
        <meta charset="utf-8">
        <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
        <title>Sign up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">	
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="js/register.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/signup.css">
    </head>

    <body class="back">    
        <nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="index.jsp">${applicationScope.bundle.getString("home")}</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="page-scroll" href="">${applicationScope.bundle.getString("about")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="">${applicationScope.bundle.getString("services")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="">${applicationScope.bundle.getString("portofolio")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="">${applicationScope.bundle.getString("contact")}</a>
                        </li>
                        <li>
                            <form action="BundleController">
                                <input class="btn btn-link " type="submit" value="RO" name="bundle">
                                <input class="btn btn-link " type="submit" value="ENG" name="bundle">
                            </form>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>            
        </nav>

        <div class="container login">
            <div class="login-signup">
                <div class="row">
                    <div class="col-sm-6 nav-tab-holder">
                        <ul class="nav nav-tabs row" role="tablist">
                            <li role="presentation" class="active col-sm-6"><a href="#company" aria-controls="company" role="company" data-toggle="tab">${applicationScope.bundle.getString("company")}</a></li>
                            <li role="presentation" class="col-sm-6"><a href="#user" aria-controls="user" role="tab" data-toggle="tab">${applicationScope.bundle.getString("user")}</a></li>
                        </ul>
                    </div>

                </div>


                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="company">
                        <div class="row">

                            <div class="col-sm-6 mobile-pull">
                                <article role="login">
                                    <h3 class="text-center"><i class="fa fa-lock"></i>${applicationScope.bundle.getString("create_company")}</h3>
                                    <form class="signup" action="RegisterController" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("company_name")}" name="companyName" onblur="nameCompany(this.value)"
                                                   required="true" >
                                            <nav id="nameComp" style="color: red"></nav>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("user_name")}" name="companyUser" onblur="companyData(this.value)" required="true">
                                            <nav id="userCompany" style="color: red;"></nav>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="${applicationScope.bundle.getString("email_address")}" name="companyMail" onblur="companyMaill(this.value)" required="true">
                                            <nav id="emailCompany" style="color:red"></nav>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("numar_telefon")}" name="companyPhone" required="true">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="${applicationScope.bundle.getString("parola")}" name="password" required="true">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="${applicationScope.bundle.getString("confirm_password")}" name="repass" required="true">
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">${applicationScope.bundle.getString("accept_terms")}
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                                        </div>
                                    </form>

                                    <footer role="signup" class="text-center">
                                        <ul>
                                            <li>
                                                <a href="#">${applicationScope.bundle.getString("terms")}</a>
                                            </li>
                                            <li>
                                                <a href="#">${applicationScope.bundle.getString("privacy")}</a>
                                            </li>
                                        </ul>
                                    </footer>
                                </article>
                            </div>
                        </div>
                        <!-- end of row -->
                    </div>
                    <!-- end of home -->
                    <div role="tabpanel" class="tab-pane" id="user">
                        <div class="row">

                            <div class="col-sm-6 mobile-pull">
                                <article role="login">
                                    <h3 class="text-center"><i class="fa fa-lock">${applicationScope.bundle.getString("create_user")}</i></h3>
                                    <form class="signup" action="RegisterController" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("first_name")}"
                                                   name="firstName" required="true">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("last_name")}"
                                                   name="lastName" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label class="radio-inline"><input type="radio" name="optradio">${applicationScope.bundle.getString("male")}</label>
                                            <label class="radio-inline"><input type="radio" name="optradio">${applicationScope.bundle.getString("female")}</label>                                                      
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="${applicationScope.bundle.getString("user_name")}"
                                                   name="user_name" onblur="userData(this.value);" required="true">
                                            <nav id="userName" style="color:red" ></nav>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="${applicationScope.bundle.getString("email_address")}"
                                                   name="email_address" onblur="userMail(this.value);" required="true">
                                            <nav id="userMail" style="color:red"></nav>
                                        </div>

                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="${applicationScope.bundle.getString("parola")}"
                                                   name="parola" required="true">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="${applicationScope.bundle.getString("confirm_password")}"
                                                   required="true">
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">${applicationScope.bundle.getString("accept_terms")}
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                                        </div>
                                    </form>
                                    <footer role="signup" class="text-center">
                                        <ul>
                                            <li>
                                                <a href="#">${applicationScope.bundle.getString("terms")}</a>
                                            </li>
                                            <li>
                                                <a href="#">${applicationScope.bundle.getString("privacy")}</a>
                                            </li>
                                        </ul>
                                    </footer>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
