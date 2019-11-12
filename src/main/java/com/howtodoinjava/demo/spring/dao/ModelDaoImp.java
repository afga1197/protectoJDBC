/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import com.howtodoinjava.demo.spring.model.Modulo;
import com.howtodoinjava.demo.spring.model.Seccion;
import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Toshiba
 */
@Repository
public class ModelDaoImp implements ModelDao{
   
   @Autowired
   private SessionFactory sessionFactory;

    @Override
    public List<Modulo> obtenerModulo(String ID) {
        TypedQuery<Modulo> query = sessionFactory.getCurrentSession().createQuery("from Modulo");
        return query.getResultList();
    }

    @Override
    public void modificarModulo(Modulo modulo) {
        sessionFactory.getCurrentSession().update(modulo);
    }

}
