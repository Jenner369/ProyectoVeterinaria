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
}
