package com.howtodoinjava.demo.spring.model;

public class Seccion {
    
    private int ID;
    private String Nombre;
    private int Modulo_ID;
    private String Titulo;
    private String Numero;

    public Seccion(int ID, String Nombre, int Modulo_ID, String Titulo, String Numero) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.Modulo_ID = Modulo_ID;
        this.Titulo = Titulo;
        this.Numero = Numero;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getModulo_ID() {
        return Modulo_ID;
    }

    public void setModulo_ID(int Modulo_ID) {
        this.Modulo_ID = Modulo_ID;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getNumero() {
        return Numero;
    }

    public void setNumero(String Numero) {
        this.Numero = Numero;
    }
    
}
