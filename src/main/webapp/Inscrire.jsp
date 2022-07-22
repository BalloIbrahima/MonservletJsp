<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--Entete --%>
	<header>
		<h2>Bienvenue, Veuillez vous inscrire!</h2>
	</header>
	<%--Fin entete --%>
	
	<%--Debut body --%>
	<main>
		<%--Creation du formulaitre --%>
		<form action="post" action="inscription">
			<div class="form_line">
				<input type="text" placeholder="Nom" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="Prénom" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="Pseudo" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="email" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="Mot de Passe" >
			</div>
			
			<div class="form_line">
				<input type="text" placeholder="Vérification du Mot de Passe" >
			</div>
			
			<input type="submit" value="Inscription">
			
		</form>
		<%--FIn du formulaire --%>
	</main>
	<%--Fin body --%>
	
</body>
</html>