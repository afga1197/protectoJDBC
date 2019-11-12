package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Comentario;
import com.howtodoinjava.demo.spring.model.Usuario;
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
public class ForoDaoImp extends com.howtodoinjava.demo.spring.model.Conexion implements ForoDao {

 
    private SessionFactory sessionFactory;
    

    private UsuarioDao usuarioDao;
    

    private ResultSet resultado;
    
    public ForoDaoImp(){
        Conectar();
    }

    @Override
    public ArrayList<String> obtenerComentarios() {
        try {
            String style [] = new String[3];
            style[0]="content-box-green";
            style[1]="content-box-blue";
            style[2]="content-box-yellow";
            int p = 0;
            ArrayList<String> comment = new ArrayList<>();
            resultado = estam.executeQuery("select comentario, user from comentario inner join usuario on comentario.Usuario_ID=usuario.Id;");
            while (resultado.next()) {
                String commentario = "<div class=\"container\">\n"
                        + "            <div class=\"" + style[p] + "\">\n"
                        + "                <strong class=\"mbr-text align-right mb-0 mbr-fonts-style display-7\">" + resultado.getString(2) + "</strong><br><br>\n"
                        + "                <p class=\"mbr-text align-right mb-0 mbr-fonts-style display-7\" style=\"text-align: justify;\" id=\"black\" >\n"
                        + "                    " + resultado.getString(1) + "\n"
                        + "                </p>\n"
                        + "            </div>\n"
                        + "        </div>\n"
                        + "        <br><br>";
                p++;
                if (p == 3) {
                    p = 0;
                }
                comment.add(commentario);

            }
            return comment;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public void modificarComentario(Comentario comentario) {
//        sessionFactory.getCurrentSession().update(comentario);
    }

    @Override
    public void eliminarComentario(int ID) {
//        Comentario u = (Comentario)sessionFactory.getCurrentSession().get(Comentario.class, ID);
//        sessionFactory.getCurrentSession().delete(u);
    }

    @Override
    public void crearComentario(Comentario comentario) {
//        sessionFactory.getCurrentSession().save(comentario);    
    }

    @Override
    public String obtenerNumeroComentarios() {
        String numero;
        try {
            resultado = estam.executeQuery("select count(*) from comentario;");
            numero = String.valueOf(resultado.getInt(1));
            return numero;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public List<Comentario> obtenerSusComentarios(String usuario_ID) {
        try {
            Usuario u = usuarioDao.obtenerUsuario();
            resultado = estam.executeQuery("select from comentario where Usuario_ID="+u.getId()+";");
            ArrayList<Comentario> com= new ArrayList<>();
            while(resultado.next()){
                Comentario con = new Comentario(resultado.getInt(1), resultado.getString(2), resultado.getString(3));
                com.add(con);
            }
            return com;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public Object obtenerComentarios(String id) {
        try {
            resultado = estam.executeQuery("select *from comentario where ID="+id+";");
            Comentario con = new Comentario(resultado.getInt(1), resultado.getString(2), resultado.getString(3));
            return con;
        } catch (SQLException ex) {
            Logger.getLogger(ForoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
}
