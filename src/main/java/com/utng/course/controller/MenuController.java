package com.utng.course.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.utng.course.entity.Menu;
import com.utng.course.service.IMenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {

	@Autowired
	private IMenuService menuService;
	
	@RequestMapping(value= {"/list", "/"})
	public String showmenu(Model model) {
	
		List<Menu> lista = menuService.getAll();
		return "listMenu";
	}
}
