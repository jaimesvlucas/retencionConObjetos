/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author User
 */
public class Salario {
    private String nombre;
    private float salario, retencion, salarioNeto;
    private double porcentaje;

    public Salario(String nombre, float salario) {
        this.nombre = nombre;
        this.salario = salario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public float getRetencion() {
        return retencion;
    }

    public void setRetencion(float retencion) {
        this.retencion = retencion;
    }

    public float getSalarioNeto() {
        return salarioNeto;
    }

    public void setSalarioNeto(float salarioNeto) {
        this.salarioNeto = salarioNeto;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }
    
    public float calcularCuotaRetencion(){
        if((this.salario>1000) && (this.salario<=3000)){
            this.porcentaje = 0.1;
            return (float)(this.salario*this.porcentaje);
        }else if(this.salario>3000){
            this.porcentaje = 0.2;
            return (float)(this.salario*this.porcentaje);
        }else{
            this.porcentaje=0;
            return this.salario;
        }
    }
    
    public float calcularSalarioNeto(){
        return this.salario-retencion;
    }
    
}
