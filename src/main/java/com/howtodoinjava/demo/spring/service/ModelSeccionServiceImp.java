/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.dao.ModelSeccionDao;
import com.howtodoinjava.demo.spring.model.Seccion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author sala4
 */
@Service
public class ModelSeccionServiceImp implements ModelSeccionService{
    
    @Autowired
    private ModelSeccionDao modelSeccionDao;

    @Transactional
    public List<Seccion> obtenerSeccionesMod(String ID_mod) {
        return modelSeccionDao.obtenerSeccionesMod(ID_mod);
    }

    @Transactional
    public void modificarSeccion(Seccion seccion) {
        modelSeccionDao.modificarSeccion(seccion);
    }
   
    
  
    
}
