/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Comentario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Toshiba
 */
public interface ForoDao {
    public ArrayList<String> obtenerComentarios();
    public void modificarComentario(Comentario comentario);
    public void eliminarComentario (int ID);
    public void crearComentario(Comentario comentario);
    public String obtenerNumeroComentarios();
    public List<Comentario> obtenerSusComentarios(String user);

    public Object obtenerComentarios(String id);
}
