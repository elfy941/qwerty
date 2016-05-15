<%-- 
    Document   : CV
    Created on : May 15, 2016, 11:33:04 AM
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
            <div class="container">
                <form action="CVController" role="form" class="form-group">

                    <div class="form-group">
                        <label for="comment">Personal Profile:</label>
                        <textarea class="form-control" rows="5" id="additionalInfo"  name="personal_profile">${sessionScope.personal_profile}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="comment">Work Experience:</label>
                        <textarea class="form-control" rows="5" id="additionalInfo"  name="work_experience">${sessionScope.work_experience}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="comment">Key Skills:</label>
                        <textarea class="form-control" rows="5" id="additionalInfo"  name="key_skills">${sessionScope.key_skills}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="comment">Education:</label>
                        <textarea class="form-control" rows="5" id="additionalInfo" name="education">${sessionScope.education}</textarea>
                    </div>
                    <input class="btn btn-primary" type="submit" name="add" value="Add">
                    <input class="btn btn-primary" type="submit" name="preview" value="Preview">
                </form>
            </div>
        </section>
    </jsp:attribute>
</tags:menutag>
