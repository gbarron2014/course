package com.utng.integradora.dao;

import java.util.List;

/**
 * Interface genérica que representa las operaciones básicas en una base de.
 * 		datos.
 * 
 * @author Gabriel Barrón Rodríguez.
 * @version 1.0
 *
 * @param <E> Representa la entidad a manipular
 * @param <K> Representa el tipo de dato de la clave foránea a manipula.
 */
public interface IGenericDao<E,K> {
	
    void add(E entidad) ;
    void saveOrUpdate(E entidad) ;
    void update(E entidad) ;
    void remove(E entidad);
    E find(K key);
    List<E> getAll(); //Lista todas las entidades
}