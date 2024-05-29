package com.mycompany.servlets;

import java.io.IOException;

import com.mycompany.dao.ClienteDAO;
import com.mycompany.model.Cliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/info-registro")
public class mostrarServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        ClienteDAO clienteDAO = new ClienteDAO();
        int documento = 1245399;
        Cliente cliente = clienteDAO.seleccionarUsuarioPorCedula(documento);
        request.setAttribute("cliente", cliente);
        request.getRequestDispatcher("/info-registro.jsp").forward(request, response);
    }
}
