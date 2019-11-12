package com.howtodoinjava.demo.spring.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.howtodoinjava.demo.spring.model.Usuario;
import com.mysql.cj.xdevapi.SessionFactory;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Repository
public class UsuarioDaoImp extends com.howtodoinjava.demo.spring.model.Conexion implements UsuarioDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private ResultSet resultado;

    public UsuarioDaoImp() {
        Conectar();
    }

    @Override
    public void guardar(Usuario user) {
        try {
            user.setPassword(encoder.encode(user.getPassword()));
            user.setRole("COMUN");
            pre = conexion.prepareStatement("INSERT INTO usuario (ID, User, Email, Password, Web_ID, Role)  VALUES(?,?,?,?,?,?)");
            pre.setInt(1, user.getId());
            pre.setString(2, user.getUser());
            pre.setString(3, user.getEmail());
            pre.setString(4, user.getPassword());
            pre.setString(5, user.getWeb_ID());
            pre.setString(6, user.getRole());
            pre.executeUpdate();
            pre.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDaoImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public List<Usuario> mostrarUsuarios() {
        try {
            resultado = estam.executeQuery("select *from Usuario where Id != 1;");
            ArrayList<Usuario> com = new ArrayList<>();
            while (resultado.next()) {
                Usuario us = new Usuario(resultado.getInt(1), resultado.getString(2), resultado.getString(3), resultado.getString(4), resultado.getString(5), resultado.getString(6));
                com.add(us);
            }
            return com;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }    
    }

    @Override
    public void modificar(Usuario user) {
        try {
            user.setPassword(encoder.encode(user.getPassword()));
            pre = conexion.prepareStatement("UPDATE Usuario SET User=?, Email=?, Password=? WHERE ID=?");
            pre.setString(1, user.getUser());
            pre.setString(2, user.getEmail());
            pre.setString(3, user.getPassword());
            pre.setInt(4, user.getId());
            pre.executeUpdate();
            pre.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDaoImp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void eliminar(int id) {
        try {
            pre=conexion.prepareStatement("DELETE FROM Usuario WHERE ID=?");
            pre.setLong(1, id);
            pre.executeUpdate();
            pre.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDaoImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public Object obtenerUsuario(int id) {
        try {
            resultado = estam.executeQuery("select *from usuario where Id="+id+";");
            Usuario usu = new Usuario(resultado.getInt(1), resultado.getString(2), resultado.getString(3) , resultado.getString(4), resultado.getString(5), resultado.getString(6));
            return usu;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public Object existeUsuario(String User) {
        try {
            Usuario per = null;
            resultado = estam.executeQuery("SELECT * FROM Usuario WHERE user = " + User + "';");
            while (resultado.next()) {
                per = new Usuario(resultado.getInt(1), resultado.getString(2), resultado.getString(3), resultado.getString(4), resultado.getString(5), resultado.getString(6));
            }
            if (per == null) {
                return null;
            } else {
                return per;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public String numUsuario() {
        String numero;
        try {
            resultado = estam.executeQuery("select count(*) from usuario;");
            numero = String.valueOf(resultado.getInt(1));
            return numero;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public Usuario findUserByUsername(String User) {
        try {
            Usuario per = null;
            resultado = estam.executeQuery("SELECT * FROM Usuario WHERE user = " + User + "';");
            while (resultado.next()) {
                per = new Usuario(resultado.getInt(1), resultado.getString(2), resultado.getString(3), resultado.getString(4), resultado.getString(5), resultado.getString(6));
            }
            if (per == null) {
                return null;
            } else {
                return per;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public String obtenerUsuarioLogueado() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            UserDetails userDetails = null;
            if (principal instanceof UserDetails) {
                userDetails = (UserDetails) principal;
            }
        if(userDetails == null){
            return "";
        }else{
            return userDetails.getUsername();
        }

    }

    @Override
    public Usuario obtenerUsuario() {
        String userLog = obtenerUsuarioLogueado();
        return findUserByUsername(userLog); 
    }

    @Override
    public String obtenerRol() {
        if(!obtenerUsuarioLogueado().equals("")){    
            return obtenerUsuario().getRole();
        }else{
            return "";
        } 
    }


}
