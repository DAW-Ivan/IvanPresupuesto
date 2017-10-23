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
public class Contenidos {
    
    private boolean daños;
    private int cantidad;
    private int franquicia;
    private double prima;

    public boolean getDaños() {
        return daños;
    }

    public void setDaños(boolean daños) {
        this.daños = daños;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getFranquicia() {
        return franquicia;
    }

    public void setFranquicia(int franquicia) {
        this.franquicia = franquicia;
    }

    public double getPrima() {
        return prima;
    }

    public void setPrima(double prima) {
        this.prima = prima;
    }
       
}
