package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Seccion;
import java.util.List;

public interface ModelSeccionDao {

    public List<Seccion> obtenerSeccionesMod(String ID_mod);
    public void modificarSeccion(Seccion seccion);

}
