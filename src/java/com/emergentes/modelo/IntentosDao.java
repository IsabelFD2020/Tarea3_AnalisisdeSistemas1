
package com.emergentes.modelo;

import com.emergentes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alcan
 */
public class IntentosDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public int ingresarIntentos(Intentos in){
        System.out.println("Voy a la consulta SQL");
        String sql = "insert into intentos(Id_Usuario, Numero_Ingresado, Sumatoria_Primo)values(?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, in.getIdUsuarios());
            ps.setInt(2, in.getNumeroIngresado());
            ps.setInt(3, in.getSumaPrimos());
            ps.executeUpdate();
        } catch (Exception e) {

        }

        return r;
    }
    
    public List mostrar(int id) {
        
        String sql = "select * from Intentos WHERE Id_Usuario = " + id;
        List<Intentos> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Intentos inte = new Intentos();
                inte.setIdIntentos(rs.getInt(1));
                inte.setIdUsuarios(rs.getInt(2));
                inte.setNumeroIngresado(rs.getInt(3));
                inte.setSumaPrimos(rs.getInt(4));
                lista.add(inte);
            }
        } catch (Exception e) {

        }

        return lista;
    }
    
    
}
