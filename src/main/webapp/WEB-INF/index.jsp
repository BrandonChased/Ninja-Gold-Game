<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
    <div class="container">
        <div class="header my-4">
            <h1>Your Gold: <c:out value="${gold}" /></h1>

        </div>
        <div class="d-flex flex-row justify-content-between">
            <div class="card">
                <form action="/" class="p-5" method="post">
                    <h2>Farm</h2>
                    <div class="form-group">
                        <h3>( earns 10-20 gold )</h3>
                        <button name="farm">Find Gold!</button>
                    </div> 
                </form>
            </div>
            <div class="card">
                <form action="/" class="p-5" method="post">
                    <h2>Cave</h2>
                    <div class="form-group">
                        <h3>( earns 5-10 gold )</h3>
                        <button name="cave">Find Gold!</button>
                    </div> 
                </form>
            </div>
            <div class="card">
                <form action="/" class="p-5" method="post">
                    <h2>House</h2>
                    <div class="form-group">
                        <h3>( earns 2-5 gold )</h3>
                        <button name="house">Find Gold!</button>
                    </div> 
                </form>
            </div>
            <div class="card">
                <form  action="/" class="p-5" method="post">
                    <h2>Quest</h2>
                    <div class="form-group">
                        <h3>( earns/takes 0-50 gold )</h3>
                        <button name="quest">Find Gold!</button>
                    </div> 
                </form>
            </div>
        </div>
        <div>
            <h1>Activites:</h1>
            <div class="card p-3 d-flex overflow-auto" style="height: 300px;">
                <c:forEach var="activity" items="${activities}">
                    <c:if test="${activity.contains('earned')}">
                        <p style="color: green;"><c:out value="${activity}"/></p>
                    </c:if>
                    <c:if test="${activity.contains('lost')}">
                        <p style="color: red;"><c:out value="${activity}"/></p>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>