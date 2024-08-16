<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist, java.util.List" %>
<%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List, com.entity.User" %>
<%@ page import="com.dao.AppointmentDAO, com.entity.Appointment" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    padding: 20px;
    background-color: #fff;
    margin-top: 20px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container">
    <div class="col-md-12">
        <div class="card paint-card">
            <div class="card-body">
                <p class="fs-3 text-center">Patient Details</p>

                <c:if test="${not empty succMsg }">
                    <p class="text-center text-success fs-3">${succMsg }</p>
                    <c:remove var="succMsg" scope="session"/>
                </c:if>
                    
                <c:if test="${not empty errorMsg }">
                    <p class="text-center text-danger fs-3">${errorMsg }</p>
                    <c:remove var="errorMsg" scope="session"/>
                </c:if>

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">Full Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Age</th>
                            <th scope="col">Appointment Date</th>
                            <th scope="col">Email</th>
                            <th scope="col">Mobile No</th>
                            <th scope="col">Diseases</th>
                            <th scope="col">Doctor Name</th>
                            <th scope="col">Address</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                        DoctorDao dao2=new DoctorDao(DBConnect.getConn());
                        
                        List<Appointment> list = dao.getAllAppointment();
                        for (Appointment ap : list) {
                        	Doctor d=dao2.getDoctorById(ap.getDoctorId());
                        %>
                        <tr>
                            <td><%= ap.getFullName() %></td>
                            <td><%= ap.getGender() %></td>
                            <td><%= ap.getAge() %></td>
                            <td><%= ap.getAppointDate() %></td>
                            <td><%= ap.getEmail() %></td>
                            <td><%= ap.getPhNo() %></td>
                            <td><%= ap.getDiseases() %></td>
                            <td><%= ap.getFullName() %></td>
                            <td><%= ap.getAddress() %></td>
                            <td><%= ap.getStatus() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
