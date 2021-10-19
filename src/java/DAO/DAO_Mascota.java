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

public class DAO_Mascota {
    cnx cn;
    Connection con;
    Beans_Mascota b;
    CallableStatement cs;
    private ResultSet rs;
    
    public DAO_Mascota() throws SQLException, IOException {
        this.cn = new cnx();
    }
    
    public void RegistrarMascota(String nombre1, String raza1, String sexo1, String tipo1, String imagen1, int CLIENTE_ID1) throws SQLException {
        try {
            String sql = "call veterinaria.registrar_mascota(?, ?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setString(1, nombre1);
            cs.setString(2, raza1);
            cs.setString(3, sexo1);
            cs.setString(4, tipo1);
            cs.setString(5, imagen1);
            cs.setInt(6, CLIENTE_ID1);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    public List<Beans_Mascota> BuscarMascotaTodos() throws SQLException {
        List<Beans_Mascota> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.buscar_mascota_todos();";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Mascota();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setRaza(rs.getString(3));
                b.setSexo(rs.getString(4));
                b.setTipo(rs.getString(5));
                b.setImagen(rs.getString(6));
                b.setCLIENTE_ID(rs.getInt(7));
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
    
    public List<Beans_Mascota> BuscarMascotaPorID_CLIENTE(int ID_CLIENTE) throws SQLException {
        List<Beans_Mascota> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.BuscarMascotaPor_IDCliente(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID_CLIENTE);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Mascota();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setRaza(rs.getString(3));
                b.setSexo(rs.getString(4));
                b.setTipo(rs.getString(5));
                b.setImagen(rs.getString(6));
                b.setCLIENTE_ID(rs.getInt(7));
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
    
    public Beans_Mascota BuscarMascota_porID(int MASCOTA_ID) throws SQLException {
        Beans_Mascota beansMascota = new Beans_Mascota ();
        try {
            String sql = "call veterinaria.buscar_mascota_id(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql); 
            cs.setInt(1, MASCOTA_ID);
            rs = cs.executeQuery();
            while (rs.next()) {
                beansMascota = new Beans_Mascota();
                beansMascota.setID(rs.getInt(1));
                beansMascota.setNombre(rs.getString(2));
                beansMascota.setRaza(rs.getString(3));
                beansMascota.setSexo(rs.getString(4));
                beansMascota.setTipo(rs.getString(5));
                beansMascota.setImagen(rs.getString(6));  
                beansMascota.setCLIENTE_ID(rs.getInt(7));
            }
            rs.close();
            cs.close();
            con.close();           
        }catch (SQLException e) {
            throw e;
        }
        return beansMascota;
    }
    
    public void EliminarMascota(int ID1) throws SQLException {
        try {
            String sql = "call veterinaria.eliminar_mascota(?);";
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
    
    public void AgregarImagenMascota(int ID1, String Imagen) throws SQLException {
        try {
            String sql = "call veterinaria.AgregarImagenMascota(?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            cs.setInt(1, ID1);
            cs.setString(2, Imagen);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    public void ActualizarMascota(int CodigoMascota, String Nombre, String Raza, String Sexo, String Tipo) throws SQLException {
        try {
            String sql = "call veterinaria.actualizar_mascota(?, ?, ?, ?, ?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql);
            //Datos para el Mascota
            cs.setInt(1, CodigoMascota);
            cs.setString(2, Nombre);
            cs.setString(3, Raza);
            cs.setString(4, Sexo);
            cs.setString(5, Tipo);
            cs.execute();
            cs.close();
            con.close();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    public List<Beans_Mascota> BuscarMascota_PorIDCliente( int idCliente) throws SQLException {
        List<Beans_Mascota> lista = new ArrayList<>();
        try {
            String sql = "call veterinaria.BUSCAR_MASCOTA_POR_ID_CLIENTE(?);";
            con = cn.getConexion();
            cs = con.prepareCall(sql); 
            cs.setInt(1, idCliente);
            rs = cs.executeQuery();
            while (rs.next()) {
                b = new Beans_Mascota();
                b.setID(rs.getInt(1));
                b.setNombre(rs.getString(2));
                b.setRaza(rs.getString(3));
                b.setSexo(rs.getString(4));
                b.setTipo(rs.getString(5));
                b.setCLIENTE_ID(rs.getInt(6));
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
}
