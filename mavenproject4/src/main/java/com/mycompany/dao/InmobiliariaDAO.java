package com.mycompany.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mycompany.model.Inmobiliaria;

public class InmobiliariaDAO {

    private String URL_DB = "jdbc:mariadb://localhost:3306/base";
    private String USER_DB = "root";
    private String PASSWORD_DB = "lizth0487";

    private static final String INSERTAR_INMUEBLE = "INSERT INTO inmobiliaria (matricula_inmueble, tipo, pais, direccion, descripcion, precio) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECCIONAR_INMUEBLE = "SELECT * FROM inmobiliaria WHERE matricula_inmueble = ?";
    private static final String SELECCIONAR_TODOS_INMUEBLES = "SELECT * FROM inmobiliaria";
    private static final String ELIMINAR_INMUEBLE = "DELETE FROM inmobiliaria WHERE matricula_inmueble = ?";
    private static final String ACTUALIZAR_INMUEBLE = "UPDATE inmuebles SET tipo = ?, pais = ?, direccion = ?, descripcion = ?, precio = ? WHERE matricula_inmueble = ?";

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

    public void insertarInmueble(Inmobiliaria nuevoInmueble) {
        try (
                Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(INSERTAR_INMUEBLE)) {
            preparedStatement.setInt(1, nuevoInmueble.getMatricula_inmueble());
            preparedStatement.setString(2, nuevoInmueble.getTipo());
            preparedStatement.setString(3, nuevoInmueble.getPais());
            preparedStatement.setString(4, nuevoInmueble.getDireccion());
            preparedStatement.setString(5, nuevoInmueble.getDescripcion());
            preparedStatement.setDouble(6, nuevoInmueble.getPrecio());

            System.out.println("He llegado hasta aqui 2");
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al insertar un usuario: " + e.getMessage());
        }
    }

    public Inmobiliaria seleccionarUsuarioPorMatricula(int matricula_inmueble) {
        Inmobiliaria inmueble = null;
        try (Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(SELECCIONAR_INMUEBLE)) {
            preparedStatement.setInt(1, matricula_inmueble);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                inmueble = new Inmobiliaria();
                inmueble.setMatricula_inmueble(resultSet.getInt("matricula"));
                inmueble.setTipo(resultSet.getString("tipo"));
                inmueble.setPais(resultSet.getString("pais"));
                inmueble.setDireccion(resultSet.getString("direccion"));
                inmueble.setDescripcion(resultSet.getString("descripcion"));
                inmueble.setPrecio(resultSet.getInt("precio"));
            }
        } catch (SQLException e) {
            System.out.println("Error al seleccionar un usuario por cédula: " + e.getMessage());
        }
        return inmueble;
    }

    public List<Inmobiliaria> seleccionarTodosInmuebles() {
        List<Inmobiliaria> inmuebles = new ArrayList<>();
        try (Connection conexion = getConnection();
                PreparedStatement preparedStatement = conexion.prepareStatement(SELECCIONAR_TODOS_INMUEBLES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Inmobiliaria inmueble = new Inmobiliaria();
                inmueble.setMatricula_inmueble(resultSet.getInt("matricula"));
                inmueble.setTipo(resultSet.getString("tipo"));
                inmueble.setPais(resultSet.getString("pais"));
                inmueble.setDireccion(resultSet.getString("direccion"));
                inmueble.setDescripcion(resultSet.getString("descripcion"));
                inmueble.setPrecio(resultSet.getDouble("precio"));
                inmuebles.add(inmueble);
            }
        } catch (SQLException e) {
            System.out.println("Error al seleccionar todos los usuarios: " + e.getMessage());
        }
        return inmuebles;
    }

}
