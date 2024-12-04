<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Teacher Dashboard</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/style_dashboard.css"
    />
  </head>
  <body>
    <div class="container">
      <!-- Sidebar -->
      <div class="sidebar">
        <div class="profile">
          <img
            src="assets/images/icon_teacher.png"
            alt="Profile Picture"
            class="profile-pic"
          />
          <div class="profile-info">
            <h3>Teacher</h3>
            <p>hairulsmkmr@gov.my</p>
            <!-- Fetching email dynamically -->
          </div>
        </div>

        <button class="logout-btn" onclick="window.location.href='login.jsp'">
          Log Out
        </button>
        <hr />
        <ul class="nav">
          <li><a href="dashboard_teacher.jsp" class="active">Dashboard</a></li>
          <li><a href="#">School Information</a></li>
          <li><a href="#">School Version</a></li>
          <li><a href="#">Equipment Information</a></li>
          <li><a href="manage_user_teacher.jsp">Manage User Information</a></li>
          <li>
            <a href="crew_application/crew_application_teacher.jsp"
              >Crew Application</a
            >
          </li>
        </ul>
      </div>

      <!-- Main Content -->
      <div class="dashboard-content">
        <div class="header">
          <img src="assets/images/kpm_logo.png" alt="KPM Logo" class="logo" />
          <h2>TVPSS Management System</h2>
        </div>
        <div class="purple-box">
          <h3>Dashboard</h3>
          <div class="poster-container">
            <img src="assets/images/poster1.jpg" alt="Poster 1" />
            <img src="assets/images/poster2.jpg" alt="Poster 2" />
          </div>
        </div>
      </div>
    </div>
  </body>
</html>