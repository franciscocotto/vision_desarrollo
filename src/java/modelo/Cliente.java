/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Angel Cotto
 */
public class Cliente {
    Integer codigo;
    String nombre;
    String apellido;
    Integer edad;
    String dui;
    String nit;
    String sexo;
    Integer peso;
    Integer estatura;
    Double imc;
    String ingreso;
    Integer membresia;
//constructor por defecto
   public Cliente() {
       
    }
//   constructor 

    public Cliente(Integer codigo, String nombre, String apellido, Integer edad, String dui, String nit, String sexo, Integer peso, Integer estatura, Double imc, String ingreso, Integer membresia) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.dui = dui;
        this.nit = nit;
        this.sexo = sexo;
        this.peso = peso;
        this.estatura = estatura;
        this.imc = imc;
        this.ingreso = ingreso;
        this.membresia = membresia;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Integer getPeso() {
        return peso;
    }

    public void setPeso(Integer peso) {
        this.peso = peso;
    }

    public Integer getEstatura() {
        return estatura;
    }

    public void setEstatura(Integer estatura) {
        this.estatura = estatura;
    }

    public Double getImc() {
        return imc;
    }

    public void setImc(Double imc) {
        this.imc = imc;
    }

    public String getIngreso() {
        return ingreso;
    }

    public void setIngreso(String ingreso) {
        this.ingreso = ingreso;
    }

    public Integer getMembresia() {
        return membresia;
    }

    public void setMembresia(Integer membresia) {
        this.membresia = membresia;
    }
    

  }
