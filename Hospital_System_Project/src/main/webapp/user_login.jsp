<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<!-- Custom CSS (if any) -->
<%@include file="../component/allcss.jsp" %>
</head>
<body>
<%@include file="admin/navbar.jsp" %>
<div class="container p-5">
    <p class="text-center fs-3">User Login</p>
    <c:if test="${not empty succMsg}">
        <p class="text-center text-success fs-3">${succMsg}</p>
        <c:remove var="succMsg" scope="session"/> 
    </c:if>
    <c:if test="${not empty errorMsg}">
        <p class="text-center text-danger fs-3">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session"/> 
    </c:if>

    <form action="userlogin" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    <p class="mt-3">Don't have an account? <a href="signup.jsp">Register here</a></p>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<!-- Custom JS (if any) -->
<script src="path_to_your_custom_js.js"></script>
</body>
</html>
