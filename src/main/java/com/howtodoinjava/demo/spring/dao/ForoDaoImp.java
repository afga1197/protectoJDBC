package com.howtodoinjava.demo.spring.dao;

import com.howtodoinjava.demo.spring.model.Comentario;
import com.howtodoinjava.demo.spring.model.Usuario;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ForoDaoImp implements ForoDao {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private UsuarioDao usuarioDao;
    
    @Override
    public ArrayList<String> obtenerComentarios() {
        String style [] = new String[3];
        style[0]="content-box-green";
        style[1]="content-box-blue";
        style[2]="content-box-yellow";
        int p=0;
        ArrayList<String> comment = new ArrayList<>();
        TypedQuery<Comentario> query = sessionFactory.getCurrentSession().createQuery("from Comentario order by ID asc");
        
        for(int x = 0 ; x < query.getResultList().size(); x++){
            TypedQuery<Usuario> query_1 = sessionFactory.getCurrentSession().createQuery("from Usuario where Id = '"+query.getResultList().get(x).getUsuario_ID()+"' ");
            String commentario="<div class=\"container\">\n" +
"            <div class=\""+style[p]+   "\">\n" +
"                <strong class=\"mbr-text align-right mb-0 mbr-fonts-style display-7\">"+query_1.getResultList().get(0).getUser()+"</strong><br><br>\n" +
"                <p class=\"mbr-text align-right mb-0 mbr-fonts-style display-7\" style=\"text-align: justify;\" id=\"black\" >\n" +
"                    "+query.getResultList().get(x).getComentario()+"\n" +
"                </p>\n" +
"            </div>\n" +
"        </div>\n" +
"        <br><br>";
            p++;
            if(p == 3){
                p=0;
            }
            comment.add(commentario);
        }
        
        return comment;
    }

    @Override
    public void modificarComentario(Comentario comentario) {
        sessionFactory.getCurrentSession().update(comentario);
    }

    @Override
    public void eliminarComentario(int ID) {
        Comentario u = (Comentario)sessionFactory.getCurrentSession().get(Comentario.class, ID);
        sessionFactory.getCurrentSession().delete(u);
    }

    @Override
    public void crearComentario(Comentario comentario) {
        sessionFactory.getCurrentSession().save(comentario);    
    }

    @Override
    public String obtenerNumeroComentarios() {
        ArrayList<String> comment = new ArrayList<>();
        TypedQuery<Comentario> query = sessionFactory.getCurrentSession().createQuery("from Comentario");
        return String.valueOf(query.getResultList().size());
    }

    @Override
    public List<Comentario> obtenerSusComentarios(String usuario_ID) {
        Usuario u = usuarioDao.obtenerUsuario();
        TypedQuery<Comentario> query = sessionFactory.getCurrentSession().createQuery("from Comentario where Usuario_ID = '"+u.getId()+"' ");
        return query.getResultList();  
    }

    @Override
    public Object obtenerComentarios(String id) {
        return (Comentario)sessionFactory.getCurrentSession().get(Comentario.class, Integer.parseInt(id));
    }
    
}
