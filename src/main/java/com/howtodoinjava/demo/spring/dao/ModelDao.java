package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Modulo;
import java.util.List;

public interface ModelDao {

    public List<Modulo> obtenerModulo(String ID);
    public void modificarModulo(Modulo modulo);

}
