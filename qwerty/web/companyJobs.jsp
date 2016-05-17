<%-- 
    Document   : companyJobs
    Created on : May 15, 2016, 11:54:24 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tags:menutag>
    <jsp:attribute name="header">
        
    </jsp:attribute>
    <jsp:attribute name="content">
        <section class="main">
            <div class="container">
                <form action="AddJobController">
                    <input type="submit" class="btn btn-primary" value="Add">
                </form>
            </div>
        </section>
    </jsp:attribute>
</tags:menutag>
