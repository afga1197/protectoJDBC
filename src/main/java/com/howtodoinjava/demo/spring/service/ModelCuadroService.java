/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import java.util.List;

/**
 *
 * @author sala4
 */
public interface ModelCuadroService {
        public List<Cuadro_seccion> obtenerCuadrosSeccion(String Modulo_ID);
        public void modificarCuadroSeccion (Cuadro_seccion cuadro);

}
