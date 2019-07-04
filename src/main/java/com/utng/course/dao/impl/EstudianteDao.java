package com.utng.course.dao.impl;


import org.springframework.stereotype.Repository;

import com.utng.course.dao.GenericDao;
import com.utng.course.dao.IEstudianteDao;
import com.utng.course.entity.Estudiante;

@Repository
public class EstudianteDao extends GenericDao<Estudiante, String> implements IEstudianteDao{	
		
}
