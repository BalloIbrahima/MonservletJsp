package com.baseDeDonnee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.classes.Utilisateur;

public class UtilisateurBDD {
	
	public Connection connection;
	
//	Methode permettant d'etablir la connection avec la base de donnée
	public void InitialiseConnection() {
			
	//		Chargement de la librairie mysql connector
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		try {
			
			this.connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/M", "root", "");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}
	
//	Méthode permettant de créer un utlisateur
	public void CreerUtilisateur(Utilisateur user) {
		this.InitialiseConnection();
//		variable requette qui envoyera la requette 
		try {
			PreparedStatement requette=this.connection.prepareStatement("INSERT INTO utilisateurs(nom, prenom,pseudo,email,motDePasse) VALUES(?, ?,?,?,?);");
        
		
			requette.setString(1, user.getNom());
			requette.setString(2, user.getPrenom());
			requette.setString(3, user.getNom());
			requette.setString(4, user.getPseudo());
			requette.setString(5, user.getMotDePasse());
			
			requette.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
//		Utilisateur user=new Utilisateur();
//		
//		
//		
//		return user;
	}
	
	
//	Méthode permettant de retouner la liste des utilisateurs
	public List<Utilisateur> ListUtilisateur(){
		
//		Declaration d'une liste qui recevra la liste
		List<Utilisateur> utilisateurs=new ArrayList<Utilisateur>();
		
//		Deux variable requette qui envoyera la requette et resultat qui la recevra
		Statement requette=null;
		ResultSet resultat=null;
		
		this.InitialiseConnection();
		
		try {
			
			requette=this.connection.createStatement();
			
//			execution de la requette
			resultat=requette.executeQuery("Select nom,prenom,eamil FROM utilisateurs;");
			
//			recuperation des resultats un à un
			while(resultat.next()) {
				
				Utilisateur user=new Utilisateur();
				user.setNom(resultat.getString("nom"));
				user.setPrenom(resultat.getString("prenom"));
				user.setEmail(resultat.getString("email"));
				
				utilisateurs.add(user);
			}
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally{
//			A la fin de la requette on vas ferme la connection
			
			try {
				if(resultat!=null) {
					resultat.close();
				}
				if(requette!=null) {
					requette.close();
				}
				if(this.connection!=null) {
					this.connection.close();
				}
				
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			
		}
		
		return utilisateurs;
	}

	
	
}
