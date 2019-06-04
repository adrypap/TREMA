<%@ page import="it.contrader.dto.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/TREMA/src/main/webapp/css/trema.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<style>
/*contenitore in cima dove c'è scritto "Login"*/
.pre_contenitore {
	width: 320px;
	margin-left: 600px;
	height: 50px;
	border: 1px solid black;
	border-radius: 40px 40px 40px 40px;
	background-color: rgba(0, 0, 0, 0.9);
	box-shadow: 20px 30px 20px #000000;
	padding: 20px;
}

.pre_contenitore p {
	color: white;
	text-align: center;
	font-size: 1.9em;
	font-family: arial;
	line-height: 2px;
}
</style>

<%
	ProjectDTO updateProject = (ProjectDTO) request.getAttribute("projectUpdate");
%>
</head>
<br>
<body>
	<div class="center">



		<div class="pre_contenitore">

			<p>Project Update</p>

		</div>
		<form method="POST" action="ProjectServlet?richiesta=update">
			<br>

			<br>
			<input type="hidden" name="idproject" value="<%=updateProject.getId()%>" /> 
			Project Name: <input type="text" size="40" maxlength="40" name="name" value="<%=updateProject.getprojectName()%>" />
			Descrizione: <input type="text" size="40" maxlength="40" name="descrizione" value="<%=updateProject.getDescrizione()%>" />
			project Type: <input type="text" size="40" maxlength="40" name="tipo" value="<%=updateProject.getTipo()%>" />
			<br>
			<br>
			<br>
			<input type="SUBMIT" value="Update">
			<br>
			<br>
			<a href="ProjectServlet?richiesta=project_manager"><i class="fas fa-arrow-alt-circle-left fa-lg"> Back</i></a>
		</form>

	</div>
</body>
</html>