<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<!-- Custom CSS (if any) -->
<%@include file="../component/allcss.jsp" %>
<style>
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container p-5">
    <p class="text-center fs-3">Admin Dashboard</p>
    <c:if test="${not empty succMsg}">
        <p class="text-center text-success fs-3">${succMsg}</p>
        <c:remove var="succMsg" scope="session"/> 
    </c:if>
    <c:if test="${not empty errorMsg}">
        <p class="text-center text-danger fs-3">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session"/> 
    </c:if>

    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-md fa-3x"></i><br>
                    <p class="fs-4 text-center">Doctor<br>5</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-circle fa-3x"></i><br>
                    <p class="fs-4 text-center">User<br>55</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="far fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">Total Appointment<br>59</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">Specialist<br>45</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <!-- Custom JS (if any) -->
    <script src="path_to_your_custom_js.js"></script>
</div>
</body>
</html>
