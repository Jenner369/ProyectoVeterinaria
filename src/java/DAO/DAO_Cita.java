package DAO;

import Beans.Beans_Cita;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class DAO_Cita {

    cnx cn;
    Connection con;
    Beans_Cita b;
    CallableStatement cs;
    private ResultSet rs;

    public DAO_Cita() throws SQLException, IOException {
        this.cn = new cnx();
    }

    public void InsertarCita(String ENTRADA, String SALIDA, double MONTO, int MASCOTA_ID, int VETERINARIO_ID, int SERVICIO_ID) throws SQLException {
        try {
            String sql = "call veterinaria.insertar_cita(?, ?, ?, ?, ?);";
            LocalDateTime EntradaTime = LocalDateTime.parse(ENTRADA);
            LocalDateTime SalidaTime = LocalDateTime.parse(SALIDA);

            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setTimestamp(1, Timestamp.valueOf(EntradaTime));
            cs.setTimestamp(2, Timestamp.valueOf(SalidaTime));
            cs.setDouble(3, MONTO);
            cs.setInt(4, MASCOTA_ID);
            cs.setInt(5, VETERINARIO_ID);
            cs.setInt(6, SERVICIO_ID);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public void ModificarCita(int ID, String ENTRADA, String SALIDA, double MONTO, int MASCOTA_ID, int VETERINARIO_ID) throws SQLException {
        try {
            String sql = "call veterinaria.modificar_cita(?, ?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            cs.setString(2, ENTRADA);
            cs.setString(3, SALIDA);
            cs.setDouble(4, MONTO);
            cs.setInt(5, MASCOTA_ID);
            cs.setInt(6, VETERINARIO_ID);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public List<Beans_Cita> BuscarCitaPorAnio(String ENTRADA) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_anio_entrada(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, ENTRADA);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setMASCOTA_ID(rs.getInt(6));
                b.setVETERINARIO_ID(rs.getInt(7));
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

    public List<Beans_Cita> BuscarCitaPorMes(String ENTRADA) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_mes_entrada(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, ENTRADA);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setMASCOTA_ID(rs.getInt(6));
                b.setVETERINARIO_ID(rs.getInt(7));
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

    public Beans_Cita BuscarCitaID(int ID) throws SQLException {
        Beans_Cita oCita = new Beans_Cita();
        try {
            String sql = "call veterinaria.buscar_cita_por_ID;";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            rs = cs.executeQuery();
            while (rs.next()) {
                oCita.setID(rs.getInt(1));
                oCita.setENTRADA(rs.getString(2));
                oCita.setSALIDA(rs.getString(3));
                oCita.setMONTO(rs.getDouble(4));
                oCita.setDESCRIPCION(rs.getString(5));
                oCita.setMASCOTA_ID(rs.getInt(6));
                oCita.setVETERINARIO_ID(rs.getInt(7));
            }
            rs.close();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
        return oCita;
    }

    public List<Beans_Cita> BuscarCitaPorDia(String ENTRADA) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_dia_entrada(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, ENTRADA);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setMASCOTA_ID(rs.getInt(6));
                b.setVETERINARIO_ID(rs.getInt(7));
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

    public List<Beans_Cita> BuscarCitaPorCliente(int MASCOTA_ID) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_cliente(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, MASCOTA_ID);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setMASCOTA_ID(rs.getInt(6));
                b.setVETERINARIO_ID(rs.getInt(7));
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

    public List<Beans_Cita> BuscarCitaPorVeterinario(int VETERINARIO_ID) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_veterinario(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, VETERINARIO_ID);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setMASCOTA_ID(rs.getInt(6));
                b.setVETERINARIO_ID(rs.getInt(7));
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

    public void EliminarCita(int ID) throws SQLException {
        try {
            String sql = "call veterinaria.eliminar_cita(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            cs.executeQuery();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
}
