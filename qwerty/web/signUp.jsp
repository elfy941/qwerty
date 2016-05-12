<%-- 
    Document   : signUp
    Created on : May 12, 2016, 11:53:11 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">
        <link rel="stylesheet" type="text/css" href="css/signup.css">
        <script src="js/register.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content">
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
                                            <label for="comment">Give us some informations:</label>
                                            <textarea class="form-control" rows="5" id="additionalInfo" name="description"></textarea>
                                        </div>
                                        <div style="position:relative;" class="form-group">
                                            <a class='btn btn-primary' href='javascript:;'>
                                                Choose File...
                                                <input type="file" style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";opacity:0;background-color:transparent;color:transparent;' name="file_source" size="40"  onchange='$("#upload-file-info").html($(this).val());'>
                                            </a>
                                            &nbsp;
                                            <span class='label label-info' id="upload-file-info" name="fileplace"></span>
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
    </jsp:attribute>
</tags:menutag>