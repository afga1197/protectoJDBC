package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
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
public class ModelCuadroDaoImp extends com.howtodoinjava.demo.spring.model.Conexion implements ModelCuadroDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private ResultSet resultado;

    public ModelCuadroDaoImp() {
        Conectar();
    }

    @Override
    public List<Cuadro_seccion> obtenerCuadrosSeccion(String Modulo_ID) {
        try {
            resultado = estam.executeQuery("select * from Cuadro_seccion where Modulo_ID =" + Modulo_ID + ";");
            ArrayList<Cuadro_seccion> com = new ArrayList<>();
            while (resultado.next()) {
                Cuadro_seccion con= new Cuadro_seccion(resultado.getInt(1), resultado.getInt(2), resultado.getString(3), resultado.getString(4), resultado.getString(5), resultado.getString(6), resultado.getString(7), resultado.getString(8));
                com.add(con);
            }
            return com;
        } catch (SQLException ex) {
            Logger.getLogger(ModelCuadroDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public void modificarCuadro(Cuadro_seccion cuadro) {
      try {
          pre = conexion.prepareStatement("UPDATE cuadro_seccion SET Subtitulo=?, Texto=?, Imagen=?, Video=?, Grafica=? WHERE ID=?");
          pre.setString(1, cuadro.getSubtitulo());
          pre.setString(2, cuadro.getTexto());
          pre.setString(3, cuadro.getImagen());
          pre.setString(4, cuadro.getVideo());
          pre.setString(5, cuadro.getGrafica());
          pre.setInt(5, cuadro.getID());
          pre.executeUpdate();
          pre.close();
      } catch (SQLException ex) {
          Logger.getLogger(ModelCuadroDaoImp.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
    
    

}
