/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.model.Modulo;
import java.util.List;

/**
 *
 * @author Toshiba
 */
public interface ModelService {
    
    public List<Modulo> obtenerModulo(String ID);
    public void modifcarModulo(Modulo modulo);

}
