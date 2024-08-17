<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List" %>
 <%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist, java.util.List" %>
    <%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor_login.jsp" />
</c:if>
<%@include file="navbar.jsp" %>



<div class="container p-5">
    <div class="row">
    
        <div class="col-md-4 ">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-4 text-center text-primary">Change Password</p>
                    <form action="../doctChangePassword" method="post">
                    
                    <c:if test="${not empty succMsg }">
                    <p class="text-center text-success fs-3">${succMsg }</p>
                    <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
                    <c:if test="${not empty errorMsg }">
                    <p class="text-center text-danger fs-3">${errorMsg }</p>
                    <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    
                    <div class="mb-3">
                            <label  class="form-label">Enter Old Password</label>
                            <input required name="oldPassword" type="text" class="form-control" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Enter New Password</label>
                            <input required name="newPassword" type="text" class="form-control" >
                        </div>
                        <input type="hidden" value="${doctObj.id }" name="uid">
                        <button  class="btn bg-success text-white col-md-12">Change Password</button>
                    </form>
                </div>
            </div>
        </div>
        
        
        <div class="col-md-4 offset-md-2">
        <div class="card paint-card">
        <p class="fs-4  text-center text-primary">Edit Profile </p>
         <c:if test="${not empty succMsgd }">
                    <p class="text-center text-success fs-3">${succMsgd }</p>
                    <c:remove var="succMsgd" scope="session"/>
                    </c:if>
                    
                    <c:if test="${not empty errorMsgd }">
                    <p class="text-center text-danger fs-3">${errorMsgd }</p>
                    <c:remove var="errorMsgd" scope="session"/>
                    </c:if>
        <div class="card-body">
        
        
         <form action="../doctorUpdateProfile" method="post">
                    <div class="mb-3">
                      <label class="form-label">Full Name</label><input type="text"
                      required name="fullname" class="form-control" value="${doctObj.fullName }">
                     
                    </div>
                    
                    <div class="mb-3">
                    <label class="form-label">DOB</label><input type="date"
                    required name="dob" class="form-control" value="${doctObj.dob }">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">QUALIFICATION</label><input 
                    required name="qualification" type="text" class="form-control" value="${doctObj.qualification }">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">Specialist</label><select name="spec"
                    required class="form-control">
                    <option>${doctObj.specialist}</option>
                    
                    
                    <%SpecialistDao dao= new SpecialistDao(DBConnect.getConn());
                    List<Specalist> list=dao.getAllSpecialist();
                    for(Specalist s:list)
                    {%>
                    <option><%=s.getSpecialistName() %> </option>
                    <%} 
                    %>
                    
                    
                    
                    </select>
                    </div>
                    
                     <div class="mb-3">
                    <label class="form-label">Email</label><input type="text" readonly
                    required name="email" type="text" class="form-control" value="${doctObj.email }">
                    </div>
                    
                     <div class="mb-3">
                    <label class="form-label">Mobile Number</label><input type="text"
                    required name="mobno" type="text" class="form-control" value="${doctObj.mobNo }">
                    </div>
                    <input type="hidden" name="id" value="${doctObj.id }">
                    
                    <button type="submit" class="btn btn-primary">Update</button>
                    </form>
        </div>
        </div>
        </div>
    </div>
</div>


</body>
</html>