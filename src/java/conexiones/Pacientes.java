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
public class Pacientes {
    private String nombres;   
    
    public Pacientes(String nombres)
    {
        super();
        this.nombres = nombres;        
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }        
    
}
