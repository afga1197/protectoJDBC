/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.dao.ModelDao;
import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import com.howtodoinjava.demo.spring.model.Modulo;
import com.howtodoinjava.demo.spring.model.Seccion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Toshiba
 */
@Service
public class ModelServiceImp implements ModelService{

  
    private ModelDao naturalDisasterDao;
   
    
    @Transactional
    public List<Modulo> obtenerModulo(String ID) {
        return naturalDisasterDao.obtenerModulo(ID);
    }

    @Transactional
    public void modifcarModulo(Modulo modulo) {
        naturalDisasterDao.modificarModulo(modulo);
    }

}
