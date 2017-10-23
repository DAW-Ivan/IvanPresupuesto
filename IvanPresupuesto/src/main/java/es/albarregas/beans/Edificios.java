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
public class Edificios {
    private String tipo;
    private int habitaciones;
    private String fecha;
    private String material;
    private int valor;
    private double prima;

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getHabitaciones() {
        return habitaciones;
    }

    public void setHabitaciones(int habitaciones) {
        this.habitaciones = habitaciones;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public double getPrima(){
        return prima;
    }
    
    public void setPrima(double prima){
        this.prima=prima;
    }

    @Override
    public String toString() {
        return "Edificios{" + "tipo=" + tipo + ", habitaciones=" + habitaciones + ", fecha=" + fecha + ", material=" + material + ", valor=" + valor + ", prima=" + prima + '}';
    }
    
    
    
}
