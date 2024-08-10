<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specalist, java.util.List" %>
    <%@ page import="com.dao.DoctorDao, com.db.DBConnect, com.entity.Doctor, java.util.List" %>
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
</head>
<body>
<%@include file="navbar.jsp" %>
  <div class="conatiner-fluid p-3">
  <div class="row">
  
  
    <div class="col-md-4 offset-md-4">
     <div class="card paint-card">
      <div class="card-body">
       <p class="fs-3 text-center">Edit Doctor Details</p>
       <c:if test="${not empty succMsg }">
                    <p class="text-center text-success fs-3">${succMsg }</p>
                    <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
                    
                    
                    <c:if test="${not empty errorMsg }">
                    <p class="text-center text-danger fs-3">${errorMsg }</p>
                    <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    
                    <%
                    int id=Integer.parseInt(request.getParameter("id"));
                    DoctorDao dao2=new DoctorDao(DBConnect.getConn());
                    Doctor d=dao2.getDoctorById(id);
                    
                    %>
                    
                    <form action="../updateDoctor" method="post">
                    <div class="mb-3">
                      <label class="form-label">Full Name</label><input type="text"
                      required name="fullname" class="form-control" value="<%=d.getFullName()%>">
                     
                    </div>
                    
                    <div class="mb-3">
                    <label class="form-label">DOB</label><input type="date"
                    required value="<%=d.getDob()%>" name="dob" class="form-control" value="<%=d.getDob()%>">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">QUALIFICATION</label><input 
                    required value="<%=d.getQualification()%>" name="qualification" type="text" class="form-control">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">Specialist</label><select name="spec"
                    required class="form-control">
                    <option><%=d.getSpecialist()%></option>
                    
                    
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
                    <label class="form-label">Email</label><input type="text"
                    required name="email" type="text" class="form-control" value="<%=d.getEmail()%>">
                    </div>
                    
                     <div class="mb-3">
                    <label class="form-label">Mobile Number</label><input type="text"
                    required name="mobno" type="text" class="form-control" value="<%=d.getMobNo()%>">
                    </div>
                    
                    <div class="mb-3">
                    <label class="form-label">Password</label><input 
                    required name="password" type="text" class="form-control" value="<%=d.getPassword()%>">
                    </div>
					<input type="hidden" name="id" value="<%= d.getId() %>">
                    <button type="submit" class="btn btn-primary col-md-12">Update</button>
                    </form>
      </div>
     
     </div>
    </div>
    
    
    
    
    </div>
  </div>
  </div>

</body>
</html>