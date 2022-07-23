<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
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
		<form method="Post" action="inscription">
			<div class="form_line">
				<input type="text" name="nom" placeholder="Nom" required >
			</div>
			
			<div class="form_line">
				<input type="text" name="prenom" placeholder="Prénom" required>
			</div>
			
			<div class="form_line">
				<input type="text" name="pseudo" placeholder="Pseudo" required>
			</div>
			
			<div class="form_line">
				<input type="email" name="email" placeholder="email" required>
			</div>
			
			<div class="form_line">
				<input type="password" name="password"  minlength="8" placeholder="Mot de Passe" required>
			</div>
			
			<div class="form_line">
				<input type="password" name="password2" minlength="8" placeholder="Vérification du Mot de Passe" required>
			</div>
			
			<% if (request.getAttribute("error")!=null) { %>
				<p> <%= request.getAttribute("error") %></p>
			<%} %>
			
			<input type="submit" value="Inscription">
			
		</form>
		<%--FIn du formulaire --%>
	</main>
	<%--Fin body --%>
	
</body>
</html>