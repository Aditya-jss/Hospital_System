<%@page import="com.db.DBConnect" %>

<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp" %>

<style type="text/css">
.paint-card{
box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
    </head>
<body>
    <%@include file="component/navbar.jsp" %>
    
    <% Connection conn=DBConnect.getConn(); %> 
    
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="component/img/pexels-photo-1033829.jpeg" class="d-block  w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="component/img/HD-wallpaper-health-doctor-hospital-healthtips-doctor-health.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="component/img/1000_F_253686702_IAZEoVMyXlNXKzhZYQCTP9RI0aOyDb5L.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container p-3">
<p class="text-center fs-2">Key Features of our Hospital</p>
<div class="row">
<div class="col-md-8 p-5">
<div class="row">
<div class="col-md-6">
<div class="card point-card">
<div class="card-body">
<p class="fs-5">100% Safety</p>
<p>The hospital is a place of healing, a place of comfort and care.</p>
</div>
</div>
</div>

<div class="col-md-6">
<div class="card point-card">
<div class="card-body">
<p class="fs-5">Clean Environment</p>
<p>Specialized Departments, Diagnostic and Treatment Facilities.</p>
</div>
</div>
</div>


<div class="col-md-6 mt-2">
<div class="card point-card">
<div class="card-body">
<p class="fs-5">Friendly Doctors</p>
<p>The hospital staff are the unsung heroes, working tirelessly to save lives.</p>
</div>
</div>
</div>

<div class="col-md-6 mt-2">
<div class="card point-card">
<div class="card-body">
<p class="fs-5">Medical Research</p>
<p>The best hospitals are not just places of treatment but also of research and education.</p>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<img alt="" src=component/img/ai-generated-a-female-doctor-with-a-stethoscope-isolated-on-transparent-background-free-png.png>
</div>

</div>
</div>
<hr>
<div class="container p-3">
    <p class="text-center fs-2">Meet Our Doctors</p>
    <div class="row">
        <div class="col-md-3">
            <div class="card doctor-card">
                <img src="component/img/pngtree-photo-men-doctor-physician-chest-smiling-png-image_10132895.png" alt="Doctor 1" class="doctor-img">
                <div class="card-body">
                    <p class="fs-5">Dr. John Doe</p>
                    <p>Specialization: Cardiology</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card doctor-card">
                <img src="component/img/pngimg.com - doctor_PNG16017.png" alt="Doctor 2" class="doctor-img" height="300px">
                <div class="card-body">
                    <p class="fs-5">Dr. Jane Smith</p>
                    <p>Specialization: Neurology</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card doctor-card">
                <img src="component/img/360_F_648694278_haC94bdL26EedqLMIbMpLACqzxwuvq4f.jpg" alt="Doctor 3" class="doctor-img">
                <div class="card-body">
                    <p class="fs-5">Dr. Emily Johnson</p>
                    <p>Specialization: Pediatrics</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card doctor-card">
                <img src="component/img/360_F_747062409_CmA67dGQtd0ZC6x85CeiH5Mp2dYR4h3t.jpg" alt="Doctor 4" class="doctor-img">
                <div class="card-body">
                    <p class="fs-5">Dr. Michael Brown</p>
                    <p>Specialization: Orthopedics</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="component/footer.jsp" %>
</body>
</html>