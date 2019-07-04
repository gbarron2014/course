package com.utng.course.dao.impl;

import org.springframework.stereotype.Repository;

import com.utng.course.dao.GenericDao;
import com.utng.course.dao.IMenuDao;
import com.utng.course.entity.Menu;

@Repository
public class MenuDaoImpl extends GenericDao<Menu, Integer> implements IMenuDao {


}
