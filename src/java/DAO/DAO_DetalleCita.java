package DAO;

import Beans.Beans_DetalleCita;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_DetalleCita {

    cnx cn;
    Connection con;
    Beans_DetalleCita b;
    CallableStatement cs;
    private ResultSet rs;

    public DAO_DetalleCita() throws SQLException, IOException {
        this.cn = new cnx();
    }

    public void InsertarDetalleCita(String descripcion, double submonto, int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
        try {
            String sql = "call veterinaria.Insertar_DetalleCita(?, ?, ?, ?, ?, ?,?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, Id_servicio);
            cs.setInt(2, Id_mascota);
            cs.setInt(3, Id_cita);
            cs.setString(4, descripcion);
            cs.setDouble(5, submonto);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public void ModificarDetalleCita(String descripcion, double submonto, int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
        try {
            String sql = "call veterinaria.Modificar_DetalleCita(?, ?, ?, ?, ?, ?,?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, Id_servicio);
            cs.setInt(2, Id_mascota);
            cs.setInt(3, Id_cita);
            cs.setString(4, descripcion);
            cs.setDouble(5, submonto);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public void EliminarDetalleCita(int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
        try {
            String sql = "call veterinaria.Modificar_DetalleCita(?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, Id_servicio);
            cs.setInt(2, Id_mascota);
            cs.setInt(3, Id_cita);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public List Buscar_DetallesCita_Todos() throws SQLException {
        List<Beans_DetalleCita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.Seleccionar_DetalleCita_Todos();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.execute();
            cs.close();
            con.close();
            while (rs.next()) {
                b = new Beans_DetalleCita();
                b.setDescripcion(rs.getString(1));
                b.setSubmonto(rs.getDouble(2));
                b.setId_Servicio(rs.getInt(3));
                b.setId_Mascota(rs.getInt(4));
                b.setId_Cita(rs.getInt(5));
                lista.add(b);
            }
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }
    
    public List Buscar_DetallesCita_PorIDCita(int Id_cita) throws SQLException {
        List<Beans_DetalleCita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.Seleccionar_DetalleCita_PorIDCita(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, Id_cita);
            cs.execute();
            cs.close();
            con.close();
            while (rs.next()) {
                b = new Beans_DetalleCita();
                b.setDescripcion(rs.getString(1));
                b.setSubmonto(rs.getDouble(2));
                b.setId_Servicio(rs.getInt(3));
                b.setId_Mascota(rs.getInt(4));
                b.setId_Cita(rs.getInt(5));
                lista.add(b);
            }
        } catch (SQLException e) {
            throw e;
        }
        return lista;
    }

}
