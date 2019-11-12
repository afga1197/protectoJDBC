/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Seccion;
import java.util.List;

/**
 *
 * @author sala4
 */
public interface ModelSeccionDao {
        public List<Seccion> obtenerSeccionesMod(String ID_mod);
        public void modificarSeccion(Seccion seccion);

}
