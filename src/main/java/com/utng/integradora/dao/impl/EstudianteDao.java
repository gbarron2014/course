package com.utng.integradora.dao.impl;


import org.springframework.stereotype.Repository;

import com.utng.integradora.dao.GenericDao;
import com.utng.integradora.dao.IEstudianteDao;
import com.utng.integradora.entity.Estudiante;

@Repository
public class EstudianteDao extends GenericDao<Estudiante, String> implements IEstudianteDao{	
		
}
