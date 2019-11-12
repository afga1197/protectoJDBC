package com.howtodoinjava.demo.spring.model;

public class Comentario{
    
    private int ID;
    private String Comentario;
    private String Usuario_ID;

    public Comentario(int ID, String Comentario, String Usuario_ID) {
        this.ID = ID;
        this.Comentario = Comentario;
        this.Usuario_ID = Usuario_ID;
    }

    public Comentario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getComentario() {
        return Comentario;
    }

    public void setComentario(String Comentario) {
        this.Comentario = Comentario;
    }

    public String getUsuario_ID() {
        return Usuario_ID;
    }

    public void setUsuario_ID(String Usuario_ID) {
        this.Usuario_ID = Usuario_ID;
    }
    
}
