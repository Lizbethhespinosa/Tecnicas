/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.servlets;

import com.mycompany.dao.ClienteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.mycompany.model.Cliente;

/**
 *
 * @author lizbe
 */
@WebServlet("/formulario-registro")
public class registroServlet extends HttpServlet {

    private ClienteDAO clienteDAO;

    public registroServlet() {
        this.clienteDAO = new ClienteDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("primer_nombre");
        String apellido = request.getParameter("primer_apellido");
        String documento = request.getParameter("documento");
        String usuario = request.getParameter("usuario");
        int contraseña = Integer.parseInt(request.getParameter("contrasenha"));

        Cliente nuevoCliente = new Cliente(nombre, apellido, documento, usuario, contraseña);
        System.out.println("He llegado hasta aca");
        clienteDAO.insertarUsuario(nuevoCliente);

        // Redireccionamos a la página de registro exitoso
        response.sendRedirect("./info-registro.jsp");
    }

}
