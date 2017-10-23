/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.beans;

/**
 *
 * @author Ivan
 */
public class Elecciones {
    
    private boolean edificio=false;
    private boolean contenido=false;

    public boolean getEdificio() {
        return edificio;
    }

    public void setEdificio(boolean edificio) {
        this.edificio = edificio;
    }

    public boolean getContenido() {
        return contenido;
    }

    public void setContenido(boolean contenido) {
        this.contenido = contenido;
    }

    @Override
    public String toString() {
        return "Elecciones{" + "edificio=" + edificio + ", contenido=" + contenido + '}';
    }
    
    
    
}
