/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.dao.ModelCuadroDao;
import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author sala4
 */
@Service
public class ModelCuadroServiceImp implements ModelCuadroService{
    
    
    private ModelCuadroDao modelCuadroDao;

    @Transactional
    public List<Cuadro_seccion> obtenerCuadrosSeccion(String Modulo_ID) {
        return modelCuadroDao.obtenerCuadrosSeccion(Modulo_ID);
    }

    @Transactional
    public void modificarCuadroSeccion(Cuadro_seccion cuadro) {
        modelCuadroDao.modificarCuadro(cuadro);
    }
   
    
   
    
    
    
    
}
