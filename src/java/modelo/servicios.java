/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author FRANCISCORAFAELCOTOA
 */
public class servicios {
    Integer codigo;
    String descripcion;
    String fecha;
    Double precio;
    

    //constructor por defecto
   public servicios() {
       
    }

    public servicios(Integer codigo, String descripcion, String fecha, Double precio) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.precio = precio;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }
   
   
}
