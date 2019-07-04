package com.utng.integradora.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table (name="estudiante")
public class Estudiante implements Serializable{

	/* No. Serial */
	private static final long serialVersionUID = -8376354122889312974L;
	
	/* Atributos de la clase*/
	@Id
	@Size(min = 10, max = 10, message= "El tamaño es de diez caracteres")
	private String numeroControl;
	
	@Column(length = 30)
	@Size(min=3, max=30, message = "El nombre debe estar comprendido entre 3 y 30 caracteres")
	private String nombre;
	@Column(length = 50)
	@Size(min=3, max=30,message = "El campo apellidos debe estar comprendido entre 3 y 50 caracteres")
	private String apellidos;
	@Column(length = 10)
	@Size(min=3, max=30,message = "Grupo no puede ser nulo")
	private String grupo;
	@Column
	@Min(value = 12, message = "Edad no debe ser menor a 12")
    @Max(value = 100, message = "Edad no debe ser mayor a 100")	
	private int edad;
	
	public Estudiante() {
		super();
	}

	public Estudiante(String numeroControl, String nombre, String apellidos, String grupo, int edad) {
		super();
		this.numeroControl = numeroControl;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.grupo = grupo;
		this.edad = edad;
	}
	
	/* Generar Getters y Setters*/		
	public String getNumeroControl() {
		return numeroControl;
	}
	public void setNumeroControl(String numeroControl) {
		this.numeroControl = numeroControl;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getGrupo() {
		return grupo;
	}
	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	

}
