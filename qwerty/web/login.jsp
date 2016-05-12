<%-- 
    Document   : login
    Created on : May 12, 2016, 11:12:26 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">

        <!--css-->
        <link rel="stylesheet" type="text/css" href="css/signup.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">       
        <link rel="stylesheet" href="css/freelancer.css" type="text/css">

        <!--js-->


    </jsp:attribute>
    <jsp:attribute name="content">        
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
    </jsp:attribute>
</tags:menutag>
