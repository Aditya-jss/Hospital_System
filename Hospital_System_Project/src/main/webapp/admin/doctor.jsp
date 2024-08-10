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
  
  
    <div class="col-md-4">
     <div class="card paint-card">
      <div class="card-body">
       <p class="fs-3 text-center">Add Doctor</p>
       <c:if test="${not empty succMsg }">
                    <p class="text-center text-success fs-3">${succMsg }</p>
                    <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
                    <c:if test="${not empty errorMsg }">
                    <p class="text-center text-danger fs-3">${errorMsg }</p>
                    <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    
                    
                    <form action="../addDoctor" method="post">
                    <div class="mb-3">
                      <label class="form-label">Full Name</label><input type="text"
                      required name="fullname" class="form-control">
                     
                    </div>
                    
                    <div class="mb-3">
                    <label class="form-label">DOB</label><input type="date"
                    required name="dob" class="form-control">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">QUALIFICATION</label><input 
                    required name="qualification" type="text" class="form-control">
                    </div>
                    
                    
                    <div class="mb-3">
                    <label class="form-label">Specialist</label><select name="spec"
                    required class="form-control">
                    <option>--select--</option>
                    
                    
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
                    required name="email" type="text" class="form-control">
                    </div>
                    
                     <div class="mb-3">
                    <label class="form-label">Mobile Number</label><input type="text"
                    required name="mobno" type="text" class="form-control">
                    </div>
                    
                    <div class="mb-3">
                    <label class="form-label">Password</label><input 
                    required name="password" type="password" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
      </div>
     
     </div>
    </div>
    
    
    <div class="col-md-8">
    <div class="card paint-card">
      <div class="card-body">
        <p class="fs-3 text-center">Doctor Details</p>
          <table class="table">
            
              <thead>
                <tr>
                  <th scope="col">Full Name</th>
                  <th scope="col">DOB</th>
                  <th scope="col">Qualification</th>
                  <th scope="col">Specialist</th>
                  <th scope="col">Email</th>
                  <th scope="col">Mob No</th>
                  <th scope="col">Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  <%
    // Create an instance of DoctorDao and retrieve the list of doctors
    DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
    List<Doctor> list2= dao2.getAllDoctor();  // getAllDoctor -> getAllDoctors (assuming correct method name)
    for (Doctor d : list2) {
%>
    <tr>
        <td><%= d.getFullName() %></td>
        <td><%= d.getDob() %></td>
        <td><%= d.getQualification() %></td>  <!-- Fixed spelling mistake in method name -->
        <td><%= d.getSpecialist() %></td>
        <td><%= d.getEmail() %></td>
        <td><%= d.getMobNo() %></td>
        <td>
        <a href="#" class="btn btn-sm btn-primary">Edit</a>
                <a href="#" class="btn btn-sm btn-danger">Delete</a>
        
        
        </td>
    </tr>
                 
                  
                	  <%}
                  
                  
                  %>
                  </tbody>
           </table>
      </div>
    </div>
    
    </div>
  </div>
  </div>

</body>
</html>