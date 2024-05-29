package com.mycompany.servlets;

import com.mycompany.dao.InmobiliariaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.mycompany.model.Inmobiliaria;

@WebServlet("/formulario-registro-inmueble")
public class inmuebleServlet extends HttpServlet {

    private InmobiliariaDAO inmobiliariaDAO;

    public inmuebleServlet() {
        this.inmobiliariaDAO = new InmobiliariaDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int matricula_inmueble = Integer.parseInt(request.getParameter("matricula"));
        String tipo = request.getParameter("tipo");
        String pais = request.getParameter("pais");
        String direccion = request.getParameter("direccion");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));

        Inmobiliaria nuevoInmueble = new Inmobiliaria(matricula_inmueble, tipo, pais, direccion, descripcion, precio);
        System.out.println("He llegado hasta aca");
        inmobiliariaDAO.insertarInmueble(nuevoInmueble);

        // Redireccionamos a la página de registro exitoso
        response.sendRedirect("registro.jsp");
    }

}
