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
//        user.setPassword(encoder.encode(user.getPassword()));
//        user.setRole("COMUN");
//        sessionFactory.getCurrentSession().save(user);
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
//        user.setPassword(encoder.encode(user.getPassword()));
//        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public void eliminar(int id) {
//        Usuario u = (Usuario)sessionFactory.getCurrentSession().get(Usuario.class, id);
//        sessionFactory.getCurrentSession().delete(u);
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
