package DAO;

import Beans.Beans_Mascota;
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
    Beans_Mascota b;
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
}
