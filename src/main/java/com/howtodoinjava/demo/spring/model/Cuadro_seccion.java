package com.howtodoinjava.demo.spring.model;

public class Cuadro_seccion {

    private int ID;
    private int Seccion_ID;
    private String Subtitulo;
    private String Texto;
    private String Imagen;
    private String Video;
    private String Grafica;
    private String Modulo_ID;

    public Cuadro_seccion(int ID, int Seccion_ID, String Subtitulo, String Texto, String Imagen, String Video, String Grafica, String Modulo_ID) {
        this.ID = ID;
        this.Seccion_ID = Seccion_ID;
        this.Subtitulo = Subtitulo;
        this.Texto = Texto;
        this.Imagen = Imagen;
        this.Video = Video;
        this.Grafica = Grafica;
        this.Modulo_ID = Modulo_ID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getSeccion_ID() {
        return Seccion_ID;
    }

    public void setSeccion_ID(int Seccion_ID) {
        this.Seccion_ID = Seccion_ID;
    }

    public String getSubtitulo() {
        return Subtitulo;
    }

    public void setSubtitulo(String Subtitulo) {
        this.Subtitulo = Subtitulo;
    }

    public String getTexto() {
        return Texto;
    }

    public void setTexto(String Texto) {
        this.Texto = Texto;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public String getGrafica() {
        return Grafica;
    }

    public void setGrafica(String Grafica) {
        this.Grafica = Grafica;
    }

    public String getModulo_ID() {
        return Modulo_ID;
    }

    public void setModulo_ID(String Modulo_ID) {
        this.Modulo_ID = Modulo_ID;
    }
}
