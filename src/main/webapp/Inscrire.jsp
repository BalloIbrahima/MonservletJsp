<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Inscription</title>
	<link href="resources/css/inscrire.css" rel="stylesheet" >
</head>
<body>

	<div class="container">
		<%--Entete --%>
		<header>
			<h2>Bienvenue, Veuillez vous inscrire!</h2>
		</header>
		<%--Fin entete --%>
		
		<%--Debut body --%>
		<main>
			<%--Creation du formulaitre --%>
			<form method="Post" action="inscription">
			
				<input class="form_line"  type="text" name="nom" placeholder="Nom" required >
			
				<input class="form_line" type="text" name="prenom" placeholder="Prénom" required>
			
				<input class="form_line" type="text" name="pseudo" placeholder="Pseudo" required>
			
				<input class="form_line" type="email" name="email" placeholder="email" required>
			
				<input class="form_line" type="password" name="password"  minlength="8" placeholder="Mot de Passe" required>
			
				<input class="form_line" type="password" name="password2" minlength="8" placeholder="Vérification du Mot de Passe" required>
				
				<% if (request.getAttribute("error")!=null) { %>
					<p class="error"> <%= request.getAttribute("error") %></p>
				<%} %>
				<div class="submit">
				
					<input class="form_line btn" style="background-color: black; color:#FFFFFF;" type="submit" value="Inscription">
					<input class="form_line btn"  style="background-color: #FFFFFF;" type="reset" value="Annuler">
				
				</div>
				
			</form>
			<%--FIn du formulaire --%>
		</main>
		<%--Fin body --%>
	</div>
	
	
</body>
</html>