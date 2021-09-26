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
    
    public void InsertarDetalleCita (String descripcion, double submonto, int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
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

    public void ModificarDetalleCita (String descripcion, double submonto, int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
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
    public void EliminarDetalleCita (int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
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
       public void BuscarTodosDetallesCita (String descripcion, double submonto, int Id_cita, int Id_servicio, int Id_mascota) throws SQLException {
        try {
            String sql = "call veterinaria.Buscar_DetalleCita(?, ?, ?, ?, ?, ?,?);";
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
    
}
