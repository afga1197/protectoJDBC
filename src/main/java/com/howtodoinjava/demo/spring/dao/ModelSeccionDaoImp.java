/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Seccion;
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
public class ModelSeccionDaoImp implements ModelSeccionDao{
    
   @Autowired
   private SessionFactory sessionFactory;

    @Override
    public List<Seccion> obtenerSeccionesMod(String ID_mod) {
        TypedQuery<Seccion> query = sessionFactory.getCurrentSession().createQuery("from Seccion where Modulo_ID = '"+ID_mod+"' ");
        return query.getResultList();   
    }

    @Override
    public void modificarSeccion(Seccion seccion) {
        sessionFactory.getCurrentSession().update(seccion);
    }
    
    
   
}
