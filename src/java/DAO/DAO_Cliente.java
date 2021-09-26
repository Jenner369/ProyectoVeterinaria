
package DAO;

import Beans.Beans_Cliente;
import Config.cnx;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_Cliente {
    cnx cn;
    Connection con;
    Beans_Cliente b;
    CallableStatement cs;
    private ResultSet rs;
    
    public DAO_Cliente() throws SQLException, IOException {
        this.cn = new cnx();
    }
    //procediminetos 
    public void RegistrarCliente (String nombre1, String apellido_p1, String apellido_m1, String usuario1 ,String password1, String imagen1) throws SQLException {
        try {
            String sql = "call veterinaria.registrar_mascota(?, ?, ?, ?, ?, ?,?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(2, nombre1);
            cs.setString(3, apellido_p1);
            cs.setString(4, apellido_m1);
            cs.setString(5, usuario1);
            cs.setString(6, password1);
            cs.setString(7, imagen1);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
        public List BuscarTodosCliente() throws SQLException {
        List<Beans_Cliente> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.SeleccionarTodos_Clientes();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cliente();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setApellidoP(rs.getString(3));
                b.setApellidoM(rs.getString(4));
                b.setUsuario(rs.getString(5));
                b.setPassword(rs.getString(6));
                b.setImagen(rs.getString(7));
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
    
    public List BuscarCliente_porNombre(String nombre1) throws SQLException {
        List<Beans_Cliente> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.Seleccionar_NombreCLiente(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql); 
            cs.setString(1, nombre1);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Cliente();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setApellidoP(rs.getString(3));
                b.setApellidoM(rs.getString(4));
                b.setUsuario(rs.getString(5));
                b.setPassword(rs.getString(6));
                b.setImagen(rs.getString(7));
                lista.add(b);
            }
            rs.close();
            cs.close();
            con.close();           
        }catch (SQLException e) {
            throw e;
        }
        return lista;
    }
        
    public void EliminarCliente (int ID1) throws SQLException {
        try {
            String sql = "call veterinaria.Eliminar_Cliente(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID1);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
     
    public void ActualizarCliente(int ID1, String nombre1, String apellido_p1, String apellido_p2, String usuario1,String password1,String imagen1) throws SQLException {
        try {
            String sql = "call veterinaria.actualizar_mascota(?, ?, ?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID1);
            cs.setString(2, nombre1);
            cs.setString(3, apellido_p1);
            cs.setString(4, apellido_p2);
            cs.setString(5, usuario1);
            cs.setString(6, password1);            
            cs.setString(7, imagen1);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
}
