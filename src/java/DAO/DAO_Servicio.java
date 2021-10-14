package DAO;

import Beans.Beans_Servicio;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_Servicio {

    cnx cn;
    Connection con;
    Beans_Servicio b;
    CallableStatement cs;
    private ResultSet rs;

    public DAO_Servicio() throws SQLException, IOException {
        this.cn = new cnx();
    }

    public void RegistrarServicio(String ID, String nombre, String costo, String duracion) throws SQLException {
        try {
            String sql = "call veterinaria.registrar_mascota(?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, ID);
            cs.setString(2, nombre);
            cs.setString(3, costo);
            cs.setString(4, duracion);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public void ModificarServicio(int ID, String nombre, Double costo, int duracion) throws SQLException {
        try {
            String sql = "call veterinaria.modificar_servicio(?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            cs.setString(2, nombre);
            cs.setDouble(3, costo);
            cs.setInt(4, duracion);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public List<Beans_Servicio> BuscarTodosServicios() throws SQLException {
        List<Beans_Servicio> lista = new ArrayList<Beans_Servicio>();
        try {
            String sql = "call veterinaria.buscar_todos_servicio();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Servicio();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setCosto(rs.getDouble(3));
                b.setDuracion(rs.getInt(4));
            }
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }

    public Beans_Servicio BuscarServicios_ID(int SERVICIO_ID) throws SQLException {
        Beans_Servicio beans_Servicio = new Beans_Servicio();

        try {
            String sql = "call veterinaria.buscar_Servicio_ID();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            cs.setInt(1,SERVICIO_ID);

            while (rs.next()) {
                b = new Beans_Servicio();
                b.setNombre(rs.getString(2));
                b.setCosto(rs.getDouble(3));
                b.setDuracion(rs.getInt(4));
            }
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return beans_Servicio;
    }

    public void EliminarServicio(int ID) throws SQLException {
        try {
            String sql = "call veterinaria.eliminar_servicio(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            cs.execute();
            cs.close();
            con.close();
        } catch (Exception e) {
            throw e;
        }
    }
}
