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


public class monservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public monservlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        this.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom,motDePasse;
		nom=request.getParameter("pseudo");		
		motDePasse=request.getParameter("password");
		
		if(nom==null) {
			this.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		}else {
			UtilisateurBDD bdd=new UtilisateurBDD();
			
			Utilisateur user=bdd.login(nom, motDePasse);
//			List<Utilisateur> utilisateurs= bdd.ListUtilisateur();
			
			
			
			if(user==null) {
				request.setAttribute("error","Pseudo ou mot de passe incorrect !");
				this.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
			}else {
//				System.out.println(utilisateurs);
//				request.setAttribute("Utilisateurs", utilisateurs);
				request.setAttribute("nom", user.getNom());
				this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);

			}
			
		}
        
	}

}
