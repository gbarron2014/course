package com.utng.course.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Menu implements Serializable{
	
	/*Serial */
	private static final long serialVersionUID = -3419209735126349074L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(length=20, nullable=false)
	private String nombre;
	@Column(length=100, nullable=false)
	private String descripcion;
	@Column(length=200, nullable=true)
	private String path;
	@Column(name="visible")
	private boolean isVisible;
	
	@ManyToOne
	@JoinColumn(name="id_menu", nullable=true)
	private Menu idMenu;
	
	//Constructor default	
	public Menu() {
		
	}

	//Constructor con campos
	public Menu(int id, String nombre, String descripcion, String path, boolean isVisible) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.path = path;
		this.isVisible = isVisible;
	}

	//Getters y setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isVisible() {
		return isVisible;
	}

	public void setVisible(boolean isVisible) {
		this.isVisible = isVisible;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Menu getIdMenu() {
		return idMenu;
	}

	public void setIdMenu(Menu idMenu) {
		this.idMenu = idMenu;
	}
	
	
}
