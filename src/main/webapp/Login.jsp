<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%--Entete --%>
	<header>
		<h2>Veuillez vous Connectez !</h2>
	</header>
	<%--Fin entete --%>
	
	<%--Debut body --%>
	<main>
		<%--Creation du formulaitre --%>
		<form action="post" action="connexion">
			<div class="form_line">
				<input type="text" placeholder="Pseudo" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="Mot de Passe" >
			</div>
			
			<input type="submit" value="connexion">
			
		</form>
		<%--FIn du formulaire --%>
	</main>

</body>
</html>