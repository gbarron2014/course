package com.utng.course.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.utng.course.dao.IEstudianteDao;
import com.utng.course.dao.IGenericDao;
import com.utng.course.entity.Estudiante;
import com.utng.course.service.GenericService;
import com.utng.course.service.IEstudianteService;

@Service
public class EstudianteServiceImpl extends GenericService<Estudiante, String> implements IEstudianteService{

	private IEstudianteDao estudianteDao;

	@Autowired
	public EstudianteServiceImpl(
			@Qualifier("estudianteDaoImpl") IGenericDao<Estudiante, String> genericDao) {
		super(genericDao);
		this.estudianteDao = (IEstudianteDao) genericDao;
	}

	public EstudianteServiceImpl() {
	}
	
	
}
