<%@page import="model.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/validation.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Projects Management</h1>

				<form id="formProject" name="formProject" method="post"
					action="Project.jsp">


					Project Name: <input id="pName" name="pName" type="text"
						class="form-control form-control-sm"> <br> Project
					Date: <input id="pDate" name="pDate" type="date"
						class="form-control form-control-sm"> <br> Project
					Category: <input id="pCate" name="pCate" type="text"
						class="form-control form-control-sm"> <br> Project
					Details: <input id="pDetai" name="pDetai" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
						Project projectObj = new Project();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
