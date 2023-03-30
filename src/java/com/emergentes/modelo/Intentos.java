
package com.emergentes.modelo;

/**
 *
 * @author Alcan
 */
public class Intentos {
    
    int idIntentos;
    int idUsuarios;
    int numeroIngresado;
    int sumaPrimos;

    public Intentos() {
    }

    public Intentos(int idUsuarios, int numeroIngresado, int sumaPrimos) {
        this.idUsuarios = idUsuarios;
        this.numeroIngresado = numeroIngresado;
        this.sumaPrimos = sumaPrimos;
    }

    public int getIdIntentos() {
        return idIntentos;
    }

    public void setIdIntentos(int idIntentos) {
        this.idIntentos = idIntentos;
    }

    public int getIdUsuarios() {
        return idUsuarios;
    }

    public void setIdUsuarios(int idUsuarios) {
        this.idUsuarios = idUsuarios;
    }

    public int getNumeroIngresado() {
        return numeroIngresado;
    }

    public void setNumeroIngresado(int numeroIngresado) {
        this.numeroIngresado = numeroIngresado;
    }

    public int getSumaPrimos() {
        return sumaPrimos;
    }

    public void setSumaPrimos(int sumaPrimos) {
        this.sumaPrimos = sumaPrimos;
    }
    
    
    
}
