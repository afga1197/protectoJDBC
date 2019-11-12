package com.howtodoinjava.demo.spring.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.howtodoinjava.demo.spring.model.Usuario;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Repository
public class UsuarioDaoImp implements UsuarioDao {

   @Autowired
   private SessionFactory sessionFactory;
   
   @Autowired
   private BCryptPasswordEncoder encoder;
   
    @Override
    public void guardar(Usuario user) {
        user.setPassword(encoder.encode(user.getPassword()));
        user.setRole("COMUN");
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public List<Usuario> mostrarUsuarios() {
        TypedQuery<Usuario> query = sessionFactory.getCurrentSession().createQuery("from Usuario where Id != 1");
        return query.getResultList();    
    }

    @Override
    public void modificar(Usuario user) {
        user.setPassword(encoder.encode(user.getPassword()));
        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public void eliminar(int id) {
        Usuario u = (Usuario)sessionFactory.getCurrentSession().get(Usuario.class, id);
        sessionFactory.getCurrentSession().delete(u);
    }

    @Override
    public Object obtenerUsuario(int id) {
        return (Usuario) sessionFactory.getCurrentSession().get(Usuario.class, id);
    }

    @Override
    public Object existeUsuario(String User) {
        String hql = "from Usuario where User=:User";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("User", User);
        Usuario u = (Usuario) query.uniqueResult();
        return u;
    }

    @Override
    public String numUsuario() {
        TypedQuery<Usuario> query = sessionFactory.getCurrentSession().createQuery("from Usuario");
        return String.valueOf(query.getResultList().size());
    }

    @Override
    public Usuario findUserByUsername(String User) {
        String hql = "from Usuario where User=:User";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("User", User);
        Usuario u = (Usuario) query.uniqueResult();
        return u;
    }

    @Override
    public String obtenerUsuarioLogueado() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            UserDetails userDetails = null;
            if (principal instanceof UserDetails) {
                userDetails = (UserDetails) principal;
            }
        if(userDetails == null){
            return "";
        }else{
            return userDetails.getUsername();
        }

    }

    @Override
    public Usuario obtenerUsuario() {
        String userLog = obtenerUsuarioLogueado();
        return findUserByUsername(userLog); 
    }

    @Override
    public String obtenerRol() {
        if(!obtenerUsuarioLogueado().equals("")){    
            return obtenerUsuario().getRole();
        }else{
            return "";
        } 
    }


}
