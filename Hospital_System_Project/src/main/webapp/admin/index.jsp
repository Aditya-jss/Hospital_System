<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<c:if test="${empty adminObj}">
    <c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

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

    <% 
        DoctorDao dao = new DoctorDao(DBConnect.getConn());
    %>

    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-md fa-3x"></i><br>
                    <p class="fs-4 text-center">Doctor<br><%= dao.countDoctor() %></p>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-circle fa-3x"></i><br>
                    <p class="fs-4 text-center">User<br><%= dao.countUser() %></p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="far fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">Total Appointment<br><%= dao.countAppointment() %></p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mt-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4 text-center">Specialist<br><%= dao.countSpecialist() %></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Add Specialist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
          <div class="form-group">
            <label>Enter Specialist Name</label>
            <input type="text" name="specName" class="form-control">
          </div>
          <div class="text-center mt-3">
            <button type="submit" class="btn btn-primary">Add</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>
