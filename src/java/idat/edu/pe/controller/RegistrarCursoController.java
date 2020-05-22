/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package idat.edu.pe.controller;

import idat.edu.pe.dao.MantCursoDAO;
import idat.edu.pe.model.Curso;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luis_
 */
@WebServlet(name = "RegistrarCursoController", urlPatterns = {"/RegistrarCursoController"})
public class RegistrarCursoController extends HttpServlet {

    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String nomcurso = request.getParameter("txtnomcurso");
          int credcurso = Integer.parseInt(request.getParameter("txtcredcurso"));
          Curso objCurso = new Curso("", nomcurso, credcurso);
          boolean res = new MantCursoDAO().RegistrarCurso(objCurso);
          String respuesta = "Error al registrar el curso", colormsg = "danger";
          if(res){
              respuesta = "Se registró el curso correctamente";
              colormsg = "primary";
          }
          request.setAttribute("respuesta", respuesta);
          request.setAttribute("colormsg", colormsg);
          RequestDispatcher dispatcher = request.getRequestDispatcher("/FormCurso.jsp");
          dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
