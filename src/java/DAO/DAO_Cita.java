package DAO;

import Beans.Beans_Cita;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
