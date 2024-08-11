<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appointment</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow:0 0 8px 0 rgba(0,0,0,0.3);
}
.backImg {
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
    url("component/img/pexels-brett-sayles-2606383.jpg");
    height: 45vh;
    width: 100%;
    background-size: cover;
    background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container-fluid backImg p-5">
<p class="text-center fs-2 text-white"></p>

</div>
<div class="container p-10">
<div class="row">
<div class="col-md-6 p-4">
<img alt="" src="component/img/images.png" width="300px" height="400px">
</div>
   <div class="col-md-6">
    <div class="card paint-card">
    <div class="card-body">
     <p class="text-center fs-3">User Appointment</p>
     <c:if test="${not empty succMsg }">
                    <p class="text-center text-success fs-3">${succMsg }</p>
                    <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
                    <c:if test="${not empty errorMsg }">
                    <p class="text-center text-danger fs-3">${errorMsg }</p>
                    <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    <form class="row g-3" action="add_appoint" method="post">
                    <input type="hidden" name="userId" value="${userObj.id }">
                    
                    <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Full Name</label><input
                    required type="text" class="form-control" name="fullname">
                     
                    </div>
                    <div class="col-md-6">
                     <label>Gender</label><select class="form-control" name="gender"
                     required>
                     <option value="male">Male</option>
                      <option value="female">Female</option>
                     
                     </select>
                    </div>
                    <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Age</label><input
                    required type="number" class="form-control" name="age">
                    </div>
                    
                    <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Appointment Date</label><input
                     type="date" class="form-control" required name="appoint_age">
                    </div>
                    
                    
                    <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Email</label><input
                    required type="email" class="form-control" name="email">
                    </div>
                    
                     <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Phone Number</label><input
                    maxlength="10" required type="number" class="form-control" name="phno">
                    </div>
                    
                    
                      <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Diseases</label><input
                     required type="text" class="form-control" name="diseases">
                    </div>
                    
                    
                      <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Doctor</label><select
                     required  class="form-control" name="doct">
                     <option value="">--Select--</option>
                     <option value="">Doctor Name</option>
                     </select>
                    </div>
                    
                     <div class="col-md-12">
                    <label>Full Address</label><textarea
                     required rows="3" cols="" class="form-control" name="address">
                     </textarea>
                     
                    </div>
                    <c:if test="${ empty userObj }">
                    <a href="ulogin.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                   
                    </c:if>
                    
                    <c:if test="${ not empty userObj }">
                    <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                   
                    </c:if>
                    
                    </form>
    </div>
    
    </div>
    </div>
    </div>
    </div>
    
</body>
</html>