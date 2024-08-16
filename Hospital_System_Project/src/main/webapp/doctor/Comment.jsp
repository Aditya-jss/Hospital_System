<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist, java.util.List" %>
<%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List,com.entity.User" %>
<%@ page import="com.dao.AppointmentDAO, com.entity.Appointment" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); /* Adds shadow to the card */
    padding: 20px;
    background-color: #fff;
    margin-top: -20px; /* Pulls the card slightly over the background image */
}

.backImg {
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
url("${pageContext.request.contextPath}/component/img/pexels-brett-sayles-2606383.jpg");

    height: 40vh;
    width: 100%;
    background-size: cover;
    background-repeat: no-repeat;
}

.table-container {
    margin-top: 20px;
}


</style>
</head>
<body>
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor_login.jsp" />
</c:if>

<%@include file="navbar.jsp" %>

<div class="container-fluid backImg p-5">
 <div class="text-center fs-2 text-white">
  
 
 </div>
 <div class="container p-3">
  <div class="row">
  
   <div class="col-md-6 offset-md-3">
    <div class="card paint-card">
     <div class="card-body">
      <p class="text-center fs-4">Patient Comment</p>
      <%
       int id=Integer.parseInt(request.getParameter("id"));
       AppointmentDAO dao=new AppointmentDAO(DBConnect.getConn());
       Appointment ap=dao.getAppointmentById(id);
       
       %>
      
      
      <form class="row" action="../updatestatus" method="post">
       <div class="col-md-6">
       <label>Patient Name</label><input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
       
       </div>
       
       <div class="col-md-6">
              <label>Age</label><input type="text" readonly value="<%=ap.getAge() %>" class="form-control">
       
       </div>
      <div class="col-md-6">
                    <br><label>Mob No</label><input type="text" readonly value="<%=ap.getPhNo() %>" class="form-control">
      
      </div>
      <div class="col-md-6">
                    <br><label>Diseases</label><input type="text" readonly value="<%=ap.getDiseases() %>" class="form-control">
      
      </div>
      <div class="col-md-6">
                    <br><label>Comment</label><textarea required name="comm"   row="3" cols="" class="form-control"></textarea>
      
      </div>
      <input type="hidden" name="id" value="<%=ap.getId() %>">
      <input type="hidden" name="did" value="<%=ap.getDoctorId() %>">
      <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
      </form>
     </div>
    </div>
   </div>
  
  </div>
 </div>


</div>
</body>
</html>