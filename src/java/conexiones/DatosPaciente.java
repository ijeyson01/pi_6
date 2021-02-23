/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexiones;

/**
 *
 * @author velez
 */
public class DatosPaciente {
    private String descripCondicion;
    private String descripTipoCondicion;
    private String edad;
    
    public DatosPaciente(String descripCondicion, String descripTipoCondicion, String edad)
    {
        super();
        this.descripCondicion = descripCondicion;
        this.descripTipoCondicion = descripTipoCondicion;
        this.edad = edad;
    }
               

    public String getDescripCondicion() {
        return descripCondicion;
    }

    public void setDescripCondicion(String descripCondicion) {
        this.descripCondicion = descripCondicion;
    }

    public String getDescripTipoCondicion() {
        return descripTipoCondicion;
    }

    public void setDescripTipoCondicion(String descripTipoCondicion) {
        this.descripTipoCondicion = descripTipoCondicion;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }        
}
