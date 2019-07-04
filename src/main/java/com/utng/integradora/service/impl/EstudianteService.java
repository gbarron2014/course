package com.utng.integradora.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.utng.integradora.dao.IEstudianteDao;
import com.utng.integradora.dao.IGenericDao;
import com.utng.integradora.entity.Estudiante;
import com.utng.integradora.service.GenericService;
import com.utng.integradora.service.IEstudianteService;

@Service
public class EstudianteService extends GenericService<Estudiante, String> implements IEstudianteService{

	private IEstudianteDao estudianteDao;

	@Autowired
	public EstudianteService(
			@Qualifier("estudianteDao") IGenericDao<Estudiante, String> genericDao) {
		super(genericDao);
		this.estudianteDao = (IEstudianteDao) genericDao;
	}

	public EstudianteService() {
	}
	
	
}
