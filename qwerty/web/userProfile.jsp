<%-- 
    Document   : userProfile
    Created on : May 13, 2016, 5:49:58 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">
        <script src="js/register.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content">
        <section id="portfolio" class="main">
            <div class="container" style="padding-top: 60px;">
                <h1 class="page-header">${applicationScope.bundle.getString("edit_profile")}</h1>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="text-center">
                            <img src="img/${sessionScope.user.getImage()}" class="avatar img-circle img-thumbnail" alt="avatar">
                            <h6>${applicationScope.bundle.getString("upload_photo")}</h6>
                            <input type="file" class="text-center center-block well well-sm" name="image">
                        </div>
                    </div>
                    <!-- edit form column -->
                    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                        <c:if test="${requestScope.OK != null}">
                            <div class="alert alert-success alert-dismissable" id="userName">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                ${requestScope.OK}
                            </div>
                        </c:if>
                        <c:if test="${requestScope.NO != null}">
                            <div class="alert alert-danger alert-dismissable" id="userName">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                ${requestScope.NO}
                            </div>
                        </c:if>
                        <h3>${applicationScope.bundle.getString("personal_info")}</h3>
                        <form class="form-horizontal" role="form" action="UserProfileController">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">${applicationScope.bundle.getString("first_name")}</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="first_name" value="${sessionScope.user.getFirstName()}" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">${applicationScope.bundle.getString("last_name")}</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="last_name" value="${sessionScope.user.getLastName()}" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">${applicationScope.bundle.getString("user")}</label>
                                <div class="col-lg-8">
                                    <input class="form-control" readonly name="user" type="text" value="${sessionScope.user.getUserName()}"                                          >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">${applicationScope.bundle.getString("email_address")}</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="email_address" type="text" value="${sessionScope.user.getEmailAddress()}">
                                </div>
                            </div>                                                                                  
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">
                                    <input class="btn btn-primary" value="${applicationScope.bundle.getString("save_changes")}" type="submit">                                    
                                </div>
                            </div>
                        </form>
                        <h3>Change password</h3>
                        <c:if test="${requestScope.error != null}">
                            <div class="alert alert-danger alert-dismissable">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                ${requestScope.error}
                            </div>
                        </c:if>
                        <c:if test="${requestScope.message != null}">
                            <div class="alert alert-success alert-dismissable">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                ${requestScope.message}
                            </div>
                        </c:if>
                        <form class="form-horizontal" role="form" action="UserPassword">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">New password</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="password" name="newpass">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Repeat password</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="password" name="repeatpass">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">
                                    <input class="btn btn-primary" value="${applicationScope.bundle.getString("save_changes")}" type="submit">                                    
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>                                    
    </jsp:attribute>
</tags:menutag>
