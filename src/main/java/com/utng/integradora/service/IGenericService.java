package com.utng.integradora.service;

import java.util.List;

/**
 * Interface genérica para definición de servicios básicos en la aplicación.
 * @author Gabriel Barrón Rodríguez.
 * @version 1.0
 *
 * @param <E> Nombre de la entidad
 * @param <K> Tipo de dato de la clave primaria
 */
public interface IGenericService<E, K> {
	
    void saveOrUpdate(E entidad);
    List<E> getAll();
    E get(K id);
    void add(E entidad);
    void update(E entidad);
    void remove(E entidad);
}
