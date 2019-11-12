package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import java.util.List;

public interface ModelCuadroDao {

    public List<Cuadro_seccion> obtenerCuadrosSeccion(String Modulo_ID);
    public void modificarCuadro(Cuadro_seccion cuadro);

}
