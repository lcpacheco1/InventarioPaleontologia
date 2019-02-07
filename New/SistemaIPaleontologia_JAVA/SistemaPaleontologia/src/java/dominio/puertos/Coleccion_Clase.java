/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

/**
 *
 * @author Andy
 */
public class Coleccion_Clase {
    
    private int idColeccion;
    private String nombre;
    private String propietario;
    private String control;
    private String curador;

    public Coleccion_Clase(int idColeccion, String nombre, String propietario, String control, String curador) {
        this.idColeccion = idColeccion;
        this.nombre = nombre;
        this.propietario = propietario;
        this.control = control;
        this.curador = curador;
    }

    public Coleccion_Clase(String nombre, String propietario, String control, String curador) {
        this.nombre = nombre;
        this.propietario = propietario;
        this.control = control;
        this.curador = curador;
    }

    public int getIdColeccion() {
        return idColeccion;
    }

    public void setIdColeccion(int idColeccion) {
        this.idColeccion = idColeccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPropietario() {
        return propietario;
    }

    public void setPropietario(String propietario) {
        this.propietario = propietario;
    }

    public String getControl() {
        return control;
    }

    public void setControl(String control) {
        this.control = control;
    }

    public String getCurador() {
        return curador;
    }

    public void setCurador(String curador) {
        this.curador = curador;
    }
    
    
    
}
