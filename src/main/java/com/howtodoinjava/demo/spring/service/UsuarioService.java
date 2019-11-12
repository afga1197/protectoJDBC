package com.howtodoinjava.demo.spring.service;

import java.util.List;

import com.howtodoinjava.demo.spring.model.Usuario;

public interface UsuarioService {
    void guardar(Usuario usuario);
    public List<Usuario> mostrarUsuarios();
    public void modificar(Usuario usuario);
    public void eliminar(int id);
    public Object obtenerUsuario(int id);
    public Object existeUsuario(String user);
    public String numUsuario();
    public String obtenerUsuarioLogueado();
    public Usuario obtenerUsuario();

    public Object obtenerRol();

}
