<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin View School Information</title>
<link rel="stylesheet" type="text/css"
	href="assets/css/style_manageuser.css">
</head>
<body>
	<div class="container">
		<!-- Sidebar -->
		<div class="sidebar">
			<div class="profile">
				<img src="assets/images/icon_admin.png" alt="Profile Picture"
					class="profile-pic">
				<div class="profile-info">
					<h3>Admin</h3>
					<p>ali@admintvpss.com</p>
					<!-- Fetching email dynamically -->
				</div>
			</div>

			<button class="logout-btn" onclick="window.location.href='login.jsp'">Log
				Out</button>
			<hr>
			<ul class="nav">
				<li><a href="dashboard_admin.jsp">Dashboard</a></li>
				<li><a href="school_info_admin.jsp" class="active">School Information</a></li>
				<li><a href="#">School Version</a></li>
				<li><a href="school_equipment_admin.jsp">Equipment
						Information</a></li>
				<li><a href="manage_user_admin.jsp">Manage User Information</a></li>
			</ul>
		</div>

		<!-- Main Content -->
		<div class="dashboard-content">
			<div class="header">
				<img src="assets/images/kpm_logo.png" alt="KPM Logo" class="logo">
				<h2>TVPSS Management System</h2>
			</div>

			<!-- Search and Add User -->
			<div class="search-bar">
				<input type="text" id="searchName" placeholder="Search school...">
				<button onclick="searchUser()">Search</button>
			</div>

			<!-- User Table -->
			<table class="user-table">
				<thead>
					<tr>
						<th>School Name</th>
						<th>State</th>
						<th>Postcode</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="userList">
					<!-- Example row, dynamically generated by JS -->
					<tr>
						<td>SMK Air Tawar</td>
						<td>Kota Tinggi</td>
						<td>81900</td>
						<td>
							<div class="table-action-buttons">
								<form action="SchoolInfo_admin" method="post"
									style="display: inline;">
									<input type="hidden" name="action" value="view"> <input
										type="hidden" name="id" value="1">
									<!-- Correct ID -->
									<button class="view" type="submit">View</button>
								</form>
							</div>
						</td>
					</tr>
					<tr>
						<td>SMK Banang Jaya</td>
						<td>Batu Pahat</td>
						<td>83000</td>
						<td>
							<div class="table-action-buttons">
								<form action="SchoolInfo_admin" method="post"
									style="display: inline;">
									<input type="hidden" name="action" value="view"> <input
										type="hidden" name="id" value="2">
									<!-- Correct ID -->
									<button class="view" type="submit">View</button>
								</form>
							</div>
						</td>
					</tr>
					<tr>
						<td>SMK Bandar Mas</td>
						<td>Kota Tinggi</td>
						<td>81900</td>
						<td>
							<div class="table-action-buttons">
								<form action="SchoolInfo_admin" method="post"
									style="display: inline;">
									<input type="hidden" name="action" value="view"> <input
										type="hidden" name="id" value="1">
									<!-- Dynamically set the school ID -->
									<button class="view" type="submit">View</button>
								</form>
							</div>
						</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>

	<script>
		function searchUser() {
			var input = document.getElementById("searchName").value
					.toLowerCase();
			var rows = document.querySelectorAll("#userList tr");

			rows.forEach(function(row) {
				var name = row.querySelector("td").textContent.toLowerCase();
				if (name.includes(input)) {
					row.style.display = "";
				} else {
					row.style.display = "none";
				}
			});
		}
	</script>

</body>
</html>