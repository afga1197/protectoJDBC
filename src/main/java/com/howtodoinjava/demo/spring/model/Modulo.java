package com.howtodoinjava.demo.spring.model;

public class Modulo{
    
    private int ID;
    private String Nombre;
    private int  Web_ID;

    public Modulo(int ID, String Nombre, int Web_ID) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.Web_ID = Web_ID;
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

    public int getWeb_ID() {
        return Web_ID;
    }

    public void setWeb_ID(int Web_ID) {
        this.Web_ID = Web_ID;
    }
    
}
