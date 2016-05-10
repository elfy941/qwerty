<%-- 
    Document   : login
    Created on : May 8, 2016, 1:09:16 AM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
        <title>Compact login form BS 3 - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body{margin-top:300px;}
        </style>
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/signup.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">       
        <link rel="stylesheet" href="css/freelancer.css" type="text/css"> 
    </head>
    <body class="back">
        <!--menu-->
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
                            <a class="page-scroll" href="signup.jsp">${applicationScope.bundle.getString("about")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#services">${applicationScope.bundle.getString("services")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#portfolio">${applicationScope.bundle.getString("portofolio")}</a>
                        </li>
                        <li>
                            <c:if test="${sessionScope.company != null}">
                                <div class="dropdown">
                                    <button class="dropbtn">${applicationScope.bundle.getString("profile")}</button>
                                    <div class="dropdown-content">
                                        <a href="#">Company Details</a>
                                        <a href="#">Link 2</a>
                                        <a href="http://localhost:8080/qwerty/LogOutController">${applicationScope.bundle.getString("logout")}</a>
                                    </div>
                                </div>
                            </c:if>
                        </li>                        
                        <li>
                            <c:if test="${sessionScope.user != null}">
                                <div class="dropdown">
                                    <button class="dropbtn">${applicationScope.bundle.getString("profile")}</button>
                                    <div class="dropdown-content">
                                        <a href="#">User Details</a>
                                        <a href="#">Link 2</a>
                                        <a href="http://localhost:8080/qwerty/LogOutController">${applicationScope.bundle.getString("logout")}</a>
                                    </div>
                                </div>
                            </c:if>
                        </li>
                        <c:if test="${sessionScope.company == null && sessionScope.user == null}">
                            <li>
                                <a class="page-scroll" href="login.jsp">${applicationScope.bundle.getString("login")}</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="signup.jsp">${applicationScope.bundle.getString("register")}</a>
                            </li>
                        </c:if>
                        <li>
                            <form action="BundleController">
                                <input class="btn btn-link " type="submit" value="RO" name="bundle">
                                <input class="btn btn-link " type="submit" value="ENG" name="bundle">
                            </form>
                        </li>
                    </ul>
                </div>
            </div>            
        </nav>
        <!--end of menu-->              

        
        
        <!--footer section-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">${applicationScope.bundle.getString("please_login")}</h3>
                        </div>
                        <div class="panel-body">
                            <form accept-charset="UTF-8" role="form" action="LoginController">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="${application.bundle.getString("user")}" name="user" type="text">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="${application.bundle.getString("parola")}" name="password" type="password" value="">
                                    </div>
                                    <nav style="color:red">${requestScope.ERROR}</nav>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me"> ${applicationScope.bundle.getString("remember")}
                                        </label>
                                    </div>
                                    <input class="btn btn-lg btn-success btn-block" type="submit" value="${applicationScope.bundle.getString("login")}">
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            request.removeAttribute("ERROR");
        %>
        
        
        
        
    </body>
</html>
