/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.dao.ForoDao;
import com.howtodoinjava.demo.spring.model.Comentario;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Toshiba
 */
@Service
public class ForoServiceImp implements ForoService{

   
    ForoDao foroDao;
    
    @Transactional
    public ArrayList<String> obtenerComentarios() {
        return foroDao.obtenerComentarios();
    }

    @Transactional
    public void modificarComentario(Comentario comentario) {
        foroDao.modificarComentario(comentario);
    }

    @Transactional
    public void eliminarComentario(int ID) {
        foroDao.eliminarComentario(ID);
    }

    @Transactional
    public void crearComentario(Comentario comentario) {
        foroDao.crearComentario(comentario);
    }

    @Transactional
    public String obtenerNumComentarios() {
        return foroDao.obtenerNumeroComentarios();
    }

    @Transactional
    public List<Comentario> obtenerSusComentarios(String user) {
        return foroDao.obtenerSusComentarios(user);
    }

    @Transactional
    public Object obtenerComentario(String id) {
        return foroDao.obtenerComentarios(id);
    }
    
}
