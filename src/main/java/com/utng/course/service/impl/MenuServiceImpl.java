package com.utng.course.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.utng.course.dao.IGenericDao;
import com.utng.course.dao.IMenuDao;
import com.utng.course.entity.Menu;
import com.utng.course.service.GenericService;
import com.utng.course.service.IMenuService;

@Service
public class MenuServiceImpl extends GenericService<Menu, Integer> implements IMenuService{

	private IMenuDao menuDao;
	
	@Autowired
	public MenuServiceImpl(
			@Qualifier("menuDaoImpl") IGenericDao<Menu, Integer> genericDao) {
		super(genericDao);
		this.menuDao = (IMenuDao) genericDao;
	}

	public MenuServiceImpl() {
	}
}
