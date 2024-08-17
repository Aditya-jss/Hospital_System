<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist, java.util.List" %>
<%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List,com.entity.User" %>
<%@ page import="com.dao.AppointmentDAO, com.entity.Appointment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment List</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); /* Adds shadow to the card */
    padding: 20px;
    background-color: #fff;
    margin-top: -20px; /* Pulls the card slightly over the background image */
}

.backImg {
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
    url("component/img/pexels-brett-sayles-2606383.jpg");
    height: 45vh;
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
<%@include file="component/navbar.jsp" %>
<c:if test="${empty userObj }">
<c:redirect url="user_login.jsp"></c:redirect>
</c:if>

<!-- Background Image Section -->
<div class="container-fluid backImg p-5">
    <p class="text-center fs-2 text-white"></p>
</div>

<!-- Table Section -->
<div class="container table-container">
    <div class="card paint-card">
        <div class="card-body">
            <p class="fs-4 fw-bold text-center text-success">Appointment List</p>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Full Name</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Age</th>
                        <th scope="col">Appointment Date</th>
                        <th scope="col">Diseases</th>
                        <th scope="col">Doctor Name</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                <%
                User user = (User) session.getAttribute("userObj");
                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
                for (Appointment ap : list) {
                    Doctor d = dao2.getDoctorById(ap.getDoctorId());
                %>
                    <tr>
                        <td><%= ap.getFullName() %></td>
                        <td><%= ap.getGender() %></td>
                        <td><%= ap.getAge() %></td>
                        <td><%= ap.getAppointDate() %></td>
                        <td><%= ap.getDiseases() %></td>
                        <td><%= d.getEmail() %></td> <!-- Assuming getName() returns the doctor's name -->
                        <td>
                            <% if ("Pending".equals(ap.getStatus())) { %>
                                <a href="#" class="btn btn-sm btn-warning">Pending</a>
                            <% } else { %>
                                <%= ap.getStatus() %>
                            <% } %>
                        </td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>
        </div>
        <div class="col-md-4 p-15 side-img">
            <img alt="Doctor Image" src="component/img/ai-generated-a-female-doctor-with-a-stethoscope-isolated-on-transparent-background-free-png.png" class="img-fluid">
        </div>
    </div>
</div>

</body>
</html>
