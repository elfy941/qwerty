<%-- 
    Document   : user
    Created on : May 13, 2016, 12:19:33 AM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">
        <link href="css/search.css" rel="stylesheet" />
        <script src="js/search.js"></script>
        <link href="css/modal.css" rel="stylesheet" />
    </jsp:attribute>
    <jsp:attribute name="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-default">
                        <div class="nav nav-justified navbar-nav">

                            <form class="navbar-form navbar-search" role="search" action="SearchController">
                                <div class="input-group">

                                    <input type="text" class="form-control" name="search">

                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-search btn-info">
                                            <span class="glyphicon glyphicon-search"></span>
                                            <span class="label-icon">Search</span>
                                        </button>
                                    </div>
                                </div>  
                            </form>   
                        </div>
                    </nav>                   
                </div>
            </div>
            <!--job results--> 
            <c:if test="${sessionScope.searchResult != null}">
                <c:forEach items="${sessionScope.searchResult}" var="s">
                    <div class="panel panel-primary">
                        <form action="ApplyController">
                            <div class="panel-body form-group">
                                <label for="name">Job title : </label>
                                <input value="${s.getName()}" class="form-control" readonly="true" name="name" id="name"> 
                            </div>
                            <div class="panel-body form-group">
                                <label for="description">Job description : </label>
                                <input value="${s.getDescription()}" class="form-control" readonly="true" name="description" id="description"> 
                            </div>
                            <div class="panel-body form-group">
                                <label for="company">Company :</label>
                                <input value="${s.getCompany()}" class="form-control" readonly="true" name="company" id="company"> 
                            </div>
                            <div class="panel-body form-group">
                                <label for="exp">Nesesary Experience :</label>
                                <input value="${s.getExperienceNecesary()}" class="form-control" readonly="true" name="exp" id="exp"> 
                            </div>
                            <div class="panel-body form-group">
                                <label for="skills">Key Skills :</label>
                                <input value="${s.getKeySkills()}" class="form-control" readonly="true" name="skills" id="skills"> 
                            </div>
                            <div class="panel-body form-group">
                                <label for="education">Required Education : </label>
                                <input value="${s.getEducation()}" class="form-control" readonly="true" name="education" id="education"> 
                            </div>
                            <div class="panel-footer">
                                <input type="submit" value="Aply" class="btn btn-primary btn-lg">
                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Choose a CV</button>
                                <c:if test="${sessionScope.cv != null}">
                                <nav class='label label-info'>CV : ${sessionScope.cv.getId()}</nav>
                                </c:if>
                            </div>
                        </form>
                    </div>
                </c:forEach>
            </c:if>
            <!--end job result-->
            
            <!--cv details-->
            <div id="myModal" class="modal fade" role="dialog">


                <div class="modal-dialog">
                    <c:forEach items="${sessionScope.cvs}" var="c">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <form action="ChooseCvController">
                                <div class="modal-header">                            
                                    <div class="panel-body form-group">
                                        <label for="cvNo">CV number  : </label>
                                        <input value="${c.getId()}" class="form-control" readonly="true" name="id" id="cvNo"> 
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="panel-body form-group">
                                        <label for="pp">Personal Profile  : </label>
                                        <input value="${c.getPersonalProfile()}" class="form-control" readonly="true" name="profile" id="pp"> 
                                    </div>
                                    <div class="panel-body form-group">
                                        <label for="we">Work experience  : </label>
                                        <input value="${c.getWorkExperience()}" class="form-control" readonly="true" name="experience" id="we"> 
                                    </div>
                                    <div class="panel-body form-group">
                                        <label for="ks">Key skills  : </label>
                                        <input value="${c.getKeySkills()}" class="form-control" readonly="true" name="skills" id="ks"> 
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-default" value="Choose">
                                </div>
                            </form>
                        </div>
                    </c:forEach>
                </div>


            </div>
            <!--cv end--> 

        </div>


    </jsp:attribute>    
</tags:menutag>
