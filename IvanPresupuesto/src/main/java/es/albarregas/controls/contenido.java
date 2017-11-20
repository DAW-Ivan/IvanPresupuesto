/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controls;

import es.albarregas.beans.Contenidos;
import es.albarregas.models.CalcularCuota;
import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "contenido", urlPatterns = {"/contenido"})
public class contenido extends HttpServlet {

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
        doPost(request, response);
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
        
        Contenidos con=new Contenidos();
        Enumeration<String> e=request.getParameterNames();
        String txt;
        String url;
        
        while(e.hasMoreElements()){
            txt=e.nextElement();
            switch(txt){
                case "dan":con.setDaños(true);
                    break;
                case "cantidad":con.setCantidad(Integer.parseInt(request.getParameter(txt)));
                    break;
                case "franquicia":con.setFranquicia(Integer.parseInt(request.getParameter(txt)));
                    break;
            }
         
        }
        
        con.setPrima(CalcularCuota.calcularContenido(con));
        
        HttpSession sesion=request.getSession();
        sesion.setAttribute("contenido", con);
        
        if(request.getParameter("jsp").equals("jstl")){
            url="jsp/jspLE/visualizar.jsp";
        }else{
            url="jsp/jspE/visualizar.jsp";
        }
        request.getRequestDispatcher(url).forward(request, response);
        
    }

}
