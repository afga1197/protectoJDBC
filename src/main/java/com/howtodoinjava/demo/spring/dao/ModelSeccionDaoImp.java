package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Modulo;
import com.howtodoinjava.demo.spring.model.Seccion;
import com.mysql.cj.xdevapi.SessionFactory;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ModelSeccionDaoImp extends com.howtodoinjava.demo.spring.model.Conexion implements ModelSeccionDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private ResultSet resultado;

    public ModelSeccionDaoImp() {
        Conectar();
    }

    @Override
    public List<Seccion> obtenerSeccionesMod(String ID_mod) {
        try {
            resultado = estam.executeQuery("select *from Seccion where Modulo_ID =" + ID_mod + ";");
            ArrayList<Seccion> com = new ArrayList<>();
            while (resultado.next()) {
                Seccion con = new Seccion(resultado.getInt(1), resultado.getString(2), resultado.getInt(3), resultado.getString(4), resultado.getString(5));
                com.add(con);
            }
            return com;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }  
    }

    @Override
    public void modificarSeccion(Seccion seccion) {
//        sessionFactory.getCurrentSession().update(seccion);
    }
    
    
   
}
