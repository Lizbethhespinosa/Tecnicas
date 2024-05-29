package com.mycompany.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mycompany.model.Cliente;

public class ClienteDAO {

    private String URL_DB = "jdbc:mariadb://localhost:3306/base";
    private String USER_DB = "root";
    private String PASSWORD_DB = "lizth0487";

    private static final String INSERTAR_USUARIO = "INSERT INTO cliente (primer_nombre, primer_apellido, documento, usuario, contrasenha) VALUES (?, ?, ?, ?, ?)";
    private static final String SELECCIONAR_USUARIO = "SELECT * FROM cliente WHERE usuario = ?";
    private static final String SELECCIONAR_TODOS = "SELECT * FROM cliente";
    private static final String ELIMINAR_USUARIO = "DELETE FROM cliente WHERE usuario = ?";
    private static final String ACTUALIZAR_USUARIO = "UPDATE usuarios SET primer_nombre = ?, primer_apellido = ?, documento = ?, contrasenha = ? WHERE usuario = ?";

    protected Connection getConnection() throws SQLException {
        Connection conexion = null;
        try {
            // Importante esta línea para que el driver sepa que se va a conectar a una base
            // de datos MariaDB
            Class.forName("org.mariadb.jdbc.Driver");
            System.out.println("Conectando a la base de datos...");
            // Le pasamos la URL de la base de datos, el usuario y la contraseña para
            // conectarnos a la base de datos
            conexion = DriverManager.getConnection(URL_DB, USER_DB, PASSWORD_DB);
            System.out.println(conexion);
        } catch (ClassNotFoundException e) {
            System.out.println("Error: MariaDB JDBC Driver no encontrado.");
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
            e.printStackTrace();
        }
        return conexion;
    }

    public void insertarUsuario(Cliente nuevoUsuario) {
        try (
                Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(INSERTAR_USUARIO)) {
            preparedStatement.setString(1, nuevoUsuario.getPrimer_nombre());
            preparedStatement.setString(2, nuevoUsuario.getPrimer_apellido());
            preparedStatement.setString(3, nuevoUsuario.getDocumento());
            preparedStatement.setString(4, nuevoUsuario.getUsuario());
            preparedStatement.setInt(5, nuevoUsuario.getContrasenha());
            System.out.println("He llegado hasta aqui 2");
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al insertar un usuario: " + e.getMessage());
        }
    }

    public Cliente seleccionarUsuarioPorCedula(int cedula) {
        Cliente usuario = null;
        try (Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(SELECCIONAR_USUARIO)) {
            preparedStatement.setInt(1, cedula);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                usuario = new Cliente();
                usuario.setUsuario(resultSet.getString("nombre"));
                usuario.setDocumento(resultSet.getString("cedula"));
                usuario.setPrimer_nombre(resultSet.getString("ciudad"));
                usuario.setPrimer_apellido(resultSet.getString("contraseña_encriptada"));
                usuario.setContrasenha(resultSet.getInt("email"));
            }
        } catch (SQLException e) {
            System.out.println("Error al seleccionar un usuario por cédula: " + e.getMessage());
        }
        return usuario;
    }

    // Se va a retornar una lista de usuarios por eso List<Usuario>
    public List<Cliente> seleccionarTodosUsuarios() {
        // Creando una nueva lista de usuarios
        List<Cliente> usuarios = new ArrayList<>();
        try (Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(SELECCIONAR_TODOS)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Cliente usuario = new Cliente();
                usuario.setUsuario(resultSet.getString("usuario"));
                usuario.setDocumento(resultSet.getString("documento"));
                usuario.setPrimer_nombre(resultSet.getString("primer_nombre"));
                usuario.setPrimer_apellido(resultSet.getString("primer_apellido"));
                usuario.setContrasenha(resultSet.getInt("contraseña"));
                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            System.out.println("Error al seleccionar todos los usuarios: " + e.getMessage());
        }
        return usuarios;
    }
}
