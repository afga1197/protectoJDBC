package com.howtodoinjava.demo.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.howtodoinjava.demo.spring.dao.UsuarioDao;
import com.howtodoinjava.demo.spring.model.Usuario;

@Service
public class UsuarioServiceImp implements UsuarioService {

   
    private UsuarioDao userDao;
   
    @Transactional
    public void guardar(Usuario usuario) {
      userDao.guardar(usuario);
    }

    @Transactional    
    public List<Usuario> mostrarUsuarios() {
        return userDao.mostrarUsuarios();
    }

    @Transactional    
    public void modificar(Usuario usuario) {
        userDao.modificar(usuario);
    }

    @Transactional    
    public void eliminar(int id) {
        userDao.eliminar(id);
    }

    @Transactional    
    public Object obtenerUsuario(int id) {
        return userDao.obtenerUsuario(id);
    }

    @Transactional    
    public Object existeUsuario(String user) {
        return userDao.existeUsuario(user);
    }

    @Transactional
    public String numUsuario() {
        return userDao.numUsuario();
    }

    @Transactional
    public String obtenerUsuarioLogueado() {
        return userDao.obtenerUsuarioLogueado();
    }

    @Transactional
    public Usuario obtenerUsuario() {
        return userDao.obtenerUsuario();
    }

    @Transactional
    public String obtenerRol() {
        return userDao.obtenerRol();
    }

 

}
