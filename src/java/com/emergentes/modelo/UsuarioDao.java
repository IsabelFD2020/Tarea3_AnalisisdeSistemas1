
package com.emergentes.modelo;

import com.emergentes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Usuario validar(String user, String contra) {
        Usuario us = new Usuario();
        String sql = "select * from Usuario where Usuario=? and Contraseña=?";

        try {

            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, contra);
            rs = ps.executeQuery();
            while (rs.next()) {
                us.setId(rs.getInt("Id_Usuario"));
                us.setUsuario(rs.getString("Usuario"));
                us.setContraseña(rs.getString("Contraseña"));
            }

        } catch (Exception e) {

        }

        return us;
    }
}
