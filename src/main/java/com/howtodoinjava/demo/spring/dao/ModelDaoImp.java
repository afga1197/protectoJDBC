package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Modulo;
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
public class ModelDaoImp extends com.howtodoinjava.demo.spring.model.Conexion implements ModelDao{
   
   @Autowired
    private SessionFactory sessionFactory;

   @Autowired
    private ResultSet resultado;

    public ModelDaoImp() {
        Conectar();
    }

    @Override
    public List<Modulo> obtenerModulo(String ID) {
        try {
            resultado = estam.executeQuery("select *from Modulo;");
            ArrayList<Modulo> com = new ArrayList<>();
            while (resultado.next()) {
                Modulo con = new Modulo(resultado.getInt(1), resultado.getString(2), resultado.getInt(3));
                com.add(con);
            }
            return com;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public void modificarModulo(Modulo modulo) {
//        sessionFactory.getCurrentSession().update(modulo);
    }

}
