package DAO;

import Beans.Beans_Cita;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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

    public void InsertarCita(String ENTRADA, String SALIDA, double MONTO, int CLIENTE_ID, int VETERINARIO_ID) throws SQLException {
        try {
            String sql = "call veterinaria.insertar_cita(?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, ENTRADA);
            cs.setString(2, SALIDA);
            cs.setDouble(3, MONTO);
            cs.setInt(4, CLIENTE_ID);
            cs.setInt(5, VETERINARIO_ID);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }

    public void ModificarCita(int ID, String ENTRADA, String SALIDA, double MONTO, int CLIENTE_ID, int VETERINARIO_ID) throws SQLException {
        try {
            String sql = "call veterinaria.modificar_cita(?, ?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID);
            cs.setString(2, ENTRADA);
            cs.setString(3, SALIDA);
            cs.setDouble(4, MONTO);
            cs.setInt(5, CLIENTE_ID);
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
                b.setCLIENTE_ID(rs.getInt(6));
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
                b.setCLIENTE_ID(rs.getInt(6));
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
                b.setCLIENTE_ID(rs.getInt(6));
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

    public List<Beans_Cita> BuscarCitaPorCliente(int CLIENTE_ID) throws SQLException {
        List<Beans_Cita> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_cita_por_cliente(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, CLIENTE_ID);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cita();
                b.setID(rs.getInt(1));
                b.setENTRADA(rs.getString(2));
                b.setSALIDA(rs.getString(3));
                b.setMONTO(rs.getDouble(4));
                b.setDESCRIPCION(rs.getString(5));
                b.setCLIENTE_ID(rs.getInt(6));
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
                b.setCLIENTE_ID(rs.getInt(6));
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
