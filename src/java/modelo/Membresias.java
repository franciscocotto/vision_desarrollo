
package modelo;
//constructor por defecto
public class Membresias {
    Integer codigo;
    String nombre;
    String descripcion;
    String costo;
    String[] beneficios;

    public Membresias() {
    }
//   constructor 
    public Membresias(Integer codigo, String nombre, String descripcion, String costo, String[] beneficios) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.costo = costo;
        this.beneficios = beneficios;
    }


// seter a n geter   
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }

    public String[] getBeneficios() {
        return beneficios;
    }

    public void setBeneficios(String[] beneficios) {
        this.beneficios = beneficios;
    }

   

 

   
    
    
    
    
}
