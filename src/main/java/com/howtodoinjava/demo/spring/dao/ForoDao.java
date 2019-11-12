package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Comentario;
import java.util.ArrayList;
import java.util.List;

public interface ForoDao {

    public ArrayList<String> obtenerComentarios();
    public void modificarComentario(Comentario comentario);
    public void eliminarComentario(int ID);
    public void crearComentario(Comentario comentario);
    public String obtenerNumeroComentarios();
    public List<Comentario> obtenerSusComentarios(String user);
    public Object obtenerComentarios(String id);
}
