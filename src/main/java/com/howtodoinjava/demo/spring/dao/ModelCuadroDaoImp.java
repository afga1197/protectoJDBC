/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sala4
 */
@Repository
public class ModelCuadroDaoImp implements ModelCuadroDao{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Cuadro_seccion> obtenerCuadrosSeccion(String Modulo_ID) {
        TypedQuery<Cuadro_seccion> query = sessionFactory.getCurrentSession().createQuery("from Cuadro_seccion where Modulo_ID = '"+Modulo_ID+"' ");
        return query.getResultList();   
    }

    @Override
    public void modificarCuadro(Cuadro_seccion cuadro) {
        sessionFactory.getCurrentSession().update(cuadro);
    }
    
    

}
