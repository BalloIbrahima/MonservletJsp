package com.servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.baseDeDonnee.UtilisateurBDD;
import com.classes.Utilisateur;


//@WebServlet(name="Monservlet", urlPatterns= {"/inscription"})
public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nom,prenom,pseudo,motDePasse,motDePasseVerif,email;
		
		nom=request.getParameter("nom");
		prenom=request.getParameter("prenom");
		pseudo=request.getParameter("pseudo");
		email=request.getParameter("email");
		motDePasse=request.getParameter("password");
		motDePasseVerif=request.getParameter("password2");
		
		
		
		if(!motDePasse.equals(motDePasseVerif)) {

			request.setAttribute("error","Vos mots de passe ne correspondent pas !");
	        this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
	        
		}else {
	        
			Utilisateur user=new Utilisateur(nom,prenom,pseudo,email,motDePasse);
			
			request.setAttribute("nom", user.getNom());
			
			
			try {
				
				UtilisateurBDD bdd=new UtilisateurBDD();
//				List<Utilisateur> utilisateurs= bdd.ListUtilisateur();
				bdd.CreerUtilisateur(user);
				
//				request.setAttribute("Utilisateurs", utilisateurs);
				
			}catch (Exception e) {
				request.setAttribute("error","Erreur lors de la crétion de compte !");
		        this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
			}
			
	        this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);
		}

	}

}
