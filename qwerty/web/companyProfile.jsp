<%-- 
    Document   : companyProfile
    Created on : May 15, 2016, 4:35:04 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">

    </jsp:attribute>
    <jsp:attribute name="content">
        <section class="main">
            <div class="container" style="padding-top: 60px;">
                <h1 class="page-header">${applicationScope.bundle.getString("edit_profile")}</h1>
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="text-center">
                            <img src="img/${sessionScope.company.getImage()}" class="avatar img-circle img-thumbnail" alt="avatar">
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
                        <form class="form-horizontal" role="form" action="CompanyProfileController">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Company Name</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="company_name" value="${sessionScope.company.getCompanyName()}" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">User Name</label>
                                <div class="col-lg-8">
                                    <input class="form-control" readonly name="company_user" value="${sessionScope.company.getUserName()}" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email Address</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="company_mail" type="text" value="${sessionScope.company.getEmailAddress()}"                                          >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Phone Number</label>
                                <div class="col-lg-8">
                                    <input class="form-control" name="company_phone" type="text" value="${sessionScope.company.getPhoneNumber()}">
                                </div>
                            </div>   
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Description:</label>    
                                <div class="col-lg-8">
                                    <textarea class="form-control" rows="5" id="additionalInfo" name="description">${sessionScope.company.getDescription()}</textarea>
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
                        <form class="form-horizontal" role="form" action="CompanyPassword">
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
