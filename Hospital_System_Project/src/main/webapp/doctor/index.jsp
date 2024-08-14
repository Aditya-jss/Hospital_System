<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<style>
    .dashboard-cards {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .card {
        margin: 10px;
    }
</style>
</head>
<body>

<!-- Redirect to login page if doctObj is empty -->
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor_login.jsp" />
</c:if>

<%@include file="navbar.jsp" %>

<p class="text-center fs-3">Doctor Dashboard</p>

<div class="container p-5">
    <div class="row dashboard-cards">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-md fa-3x"></i>
                    <p class="fs-4 text-center">
                        Doctor<br>12
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="far fa-calendar-check fa-3x"></i>
                    <p class="fs-4 text-center">
                        Total Appointment<br>12
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
