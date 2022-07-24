<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.baseDeDonnee.UtilisateurBDD"%>
<%@page import="com.classes.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ACceuil</title>
	<link href="resources/css/acceuil.css" rel="stylesheet" >

</head>
<body>
	<div class="container">
	
		<% UtilisateurBDD bdd=new UtilisateurBDD();	
			 List<Utilisateur> utilisateurs= bdd.ListUtilisateur();
		%>
		<p class="textBienvenu">Bienvenu <%= request.getAttribute("nom") %>!</p>
		
		<!-- Création d'un tableau pour l'affichege de la liste des utilisateurs -->
		
		<table border="1" cellpadding="5">
	        <caption><h2>List des utilisateurs</h2></caption>
	        <tr>
	            <th>Nom</th>
	            <th>Prénom</th>
	            <th>Email</th>
	        </tr>
	
			<% for(Utilisateur user:utilisateurs) { %> 			
		 		<tr>
				    <td><%=user.getNom() %></td>
				 	<td><%=user.getPrenom() %></td>
				    <td><%=user.getEmail() %></td>
			 
			 	</tr>
			<%} %>
		</table>
		
		
		<%-- <table border="1" cellpadding="5">
	            <caption><h2>List des utilisateurs</h2></caption>
	            <tr>
	                <th>Nom</th>
	                <th>Nom</th>
	                <th>Email</th>
	            </tr>
		
			<c:forEach var="user" items="${Utilisateurs}">
		 		<tr>
				    <td><c:out value="${user.nom}" /></td>
				 	<td><c:out value="${user.prenom}" /></td>
				    <td><c:out value="${user.email}" /></td>
			 
			 	</tr>
			</c:forEach>
		</table> --%>
		
		
		<form method="post" action="acceuil">
			<input class="btn" type="submit" value="Deconnection"/>
		</form>
	</div>
	
</body>
</html>