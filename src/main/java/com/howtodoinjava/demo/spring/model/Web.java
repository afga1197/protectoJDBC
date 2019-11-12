package com.howtodoinjava.demo.spring.model;

public class Web{
    
    private int ID;
    private String Nombre;
    private String URL;
    private String NombreForo;

    public Web(int ID, String Nombre, String URL, String NombreForo) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.URL = URL;
        this.NombreForo = NombreForo;
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

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getNombreForo() {
        return NombreForo;
    }

    public void setNombreForo(String NombreForo) {
        this.NombreForo = NombreForo;
    }

}
