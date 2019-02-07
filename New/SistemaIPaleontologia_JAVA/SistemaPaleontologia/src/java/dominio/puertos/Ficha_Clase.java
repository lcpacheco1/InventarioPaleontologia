/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio.puertos;

import java.util.Date;

/**
 *
 * @author Andy
 */
public class Ficha_Clase {

    private int idFichaFosil;
    private double largo;
    private double ancho;
    private double diametro;
    private double espesor;
    private double peso;
    private String estadoConser;
    private String registrador;
    private Date fechaRegistro;
    private String descripcionGeologica;
    private String entidadRevisadora;
    private Date fechaRevision;

    public Ficha_Clase(int idFichaFosil, double largo, double ancho, double diametro,
            double espesor, double peso, String estadoConser, String registrador,
            Date fechaRegistro, String descripcionGeologica, String entidadRevisadora, Date fechaRevision) {
        this.idFichaFosil = idFichaFosil;
        this.largo = largo;
        this.ancho = ancho;
        this.diametro = diametro;
        this.espesor = espesor;
        this.peso = peso;
        this.estadoConser = estadoConser;
        this.registrador = registrador;
        this.fechaRegistro = fechaRegistro;
        this.descripcionGeologica = descripcionGeologica;
        this.entidadRevisadora = entidadRevisadora;
        this.fechaRevision = fechaRevision;
    }

    public int getIdFichaFosil() {
        return idFichaFosil;
    }

    public void setIdFichaFosil(int idFichaFosil) {
        this.idFichaFosil = idFichaFosil;
    }

    public double getLargo() {
        return largo;
    }

    public void setLargo(double largo) {
        this.largo = largo;
    }

    public double getAncho() {
        return ancho;
    }

    public void setAncho(double ancho) {
        this.ancho = ancho;
    }

    public double getDiametro() {
        return diametro;
    }

    public void setDiametro(double diametro) {
        this.diametro = diametro;
    }

    public double getEspesor() {
        return espesor;
    }

    public void setEspesor(double espesor) {
        this.espesor = espesor;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getEstadoConser() {
        return estadoConser;
    }

    public void setEstadoConser(String estadoConser) {
        this.estadoConser = estadoConser;
    }

    public String getRegistrador() {
        return registrador;
    }

    public void setRegistrador(String registrador) {
        this.registrador = registrador;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getDescripcionGeologica() {
        return descripcionGeologica;
    }

    public void setDescripcionGeologica(String descripcionGeologica) {
        this.descripcionGeologica = descripcionGeologica;
    }

    public String getEntidadRevisadora() {
        return entidadRevisadora;
    }

    public void setEntidadRevisadora(String entidadRevisadora) {
        this.entidadRevisadora = entidadRevisadora;
    }

    public Date getFechaRevision() {
        return fechaRevision;
    }

    public void setFechaRevision(Date fechaRevision) {
        this.fechaRevision = fechaRevision;
    }
    
    

}
