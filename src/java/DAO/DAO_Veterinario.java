package DAO;

import Beans.Beans_Veterinario;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import java.util.List;

public class DAO_Veterinario {

    cnx cn;
    Connection con;
    Beans_Veterinario b;
    CallableStatement cs;
    private ResultSet rs;

    public DAO_Veterinario() throws SQLException, IOException {
        this.cn = new cnx();
    }

    //Metodos
    public Beans_Veterinario BuscarUsuario(String u, String c) throws SQLException {
        Beans_Veterinario bVeterinario = new Beans_Veterinario();
        try {
            String sql = "call veterinaria.buscar_usuario(?,?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, u);
            cs.setString(2, c);
            rs = cs.executeQuery();
            while (rs.next()) {

                bVeterinario.setId(rs.getInt(1));
                bVeterinario.setNombre(rs.getString(2));
                bVeterinario.setApellido_p(rs.getString(3));
                bVeterinario.setApellido_m(rs.getString(4));
                bVeterinario.setUsuario(rs.getString(5));
                bVeterinario.setPassword(rs.getString(6));
                bVeterinario.setDni(rs.getString(7));

            }
            rs.close();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return bVeterinario;
    }
    

    public boolean registrar_veterinario(String nombre, String apellido_p, String apellido_m,
            String usuario, String password, String dni, String imagen) throws SQLException {
        try {
            String sql = "call veterianaria.insert_veterinario(?,?,?,?,?,?,?)";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, nombre);
            cs.setString(2, apellido_p);
            cs.setString(3, apellido_m);
            cs.setString(4, usuario);
            cs.setString(5, password);
            cs.setString(6, dni);
            rs = cs.executeQuery();
            rs.close();
            cs.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
            return false;
        }
    }

    public boolean eliminar_veterinario(int id_veterinario) throws SQLException {
        try {
            String sql = "call veterinaria.eliminarproducto(?)";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, id_veterinario);
            rs = cs.executeQuery();
            rs.close();
            cs.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("ERROR:" + e.getMessage());
            return false;
        }
    }

    public boolean actualizar_veterinario(int id_veterinario, String nombre, String apellido_p, String apellido_m,
            String usuario, String password, String dni, String imagen) throws SQLException {
        try {
            String sql = "call veterianaria.insert_veterinario(?,?,?,?,?,?,?,?)";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, id_veterinario);
            cs.setString(2, nombre);
            cs.setString(3, apellido_p);
            cs.setString(4, apellido_m);
            cs.setString(5, usuario);
            cs.setString(6, password);
            cs.setString(7, dni);
            rs = cs.executeQuery();
            rs.close();
            cs.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("ERROR: " + e.getMessage());
            return false;
        }
    }

    public List Seleccionarveterinarios() throws SQLException {
        List<Beans_Veterinario> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.select_veterinarios();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Veterinario();
                b.setId(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setApellido_p(rs.getString(3));
                b.setApellido_m(rs.getString(4));
                b.setUsuario(rs.getString(5));
                b.setPassword(rs.getString(6));
                b.setDni(rs.getString(7));
                lista.add(b);

            }
            rs.close();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }

    public List SeleccionarVeterinario() throws SQLException {
        List<Beans_Veterinario> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.select_veterinarios();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Veterinario();
                b.setId(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setApellido_p(rs.getString(3));
                b.setApellido_m(rs.getString(4));
                b.setUsuario(rs.getString(5));
                b.setPassword(rs.getString(6));
                b.setDni(rs.getString(7));
                lista.add(b);

            }
            rs.close();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }

    public List SeleccionarVeterinario_PorDisponibilidad(String ENTRADA, String SALIDA) throws SQLException {
        List<Beans_Veterinario> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.BUSCAR_VETERINARIO_POR_DISPONIBILIDAD(?,?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            LocalDateTime EntradaTime = LocalDateTime.parse(ENTRADA);
            LocalDateTime SalidaTime = LocalDateTime.parse(SALIDA);
            cs.setTimestamp(1, Timestamp.valueOf(EntradaTime));
            cs.setTimestamp(2, Timestamp.valueOf(SalidaTime));
            rs = cs.executeQuery();

            while (rs.next()) {

                b = new Beans_Veterinario();
                b.setId(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setApellido_p(rs.getString(3));
                b.setApellido_m(rs.getString(4));
                b.setUsuario(rs.getString(5));
                b.setPassword(rs.getString(6));
                b.setDni(rs.getString(7));
                lista.add(b);

            }
            rs.close();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }

}
