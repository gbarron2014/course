package com.utng.integradora.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.utng.integradora.entity.Estudiante;
import com.utng.integradora.service.IEstudianteService;

@Controller
@RequestMapping("/estudiante")
public class EstudianteController {

	@Autowired(required = true)
	IEstudianteService estudianteService;
	
	List<String> mensajes = new ArrayList<>();
	
	@Autowired
    MessageSource messageSource;

	// Método que se invocará para listar a todos los estudiantes
	@RequestMapping(value = { "/estudiante", "/list" }, method = RequestMethod.GET)
	public String listEstudiantes(Model model) {

		List<Estudiante> estudiantes = estudianteService.getAll();
		model.addAttribute("estudiantes", estudiantes);
		model.addAttribute("error", 0); //No hay nada que mostrar
		mensajes.clear();
		model.addAttribute("mensajes", mensajes);
		return "listEstudiante"; // la vista a invocar
	}

	
	
	@RequestMapping(value = { "/estudiante", "/new" }, method = RequestMethod.GET)
	public String newEstudiante(Model model) {
		
		Estudiante estudiante = new Estudiante();
		model.addAttribute("estudiante", estudiante);
		model.addAttribute("error", 0); //No hay nada que mostrar
		mensajes.clear();
		model.addAttribute("mensajes", mensajes);		
		model.addAttribute("edit", false);
		return "addEstudiante";
	}
	
	@RequestMapping(value = { "/estudiante", "/new" }, method = RequestMethod.POST)
	public String saveEstudiante(@Valid Estudiante estudiante, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "addEstudiante";
		}

		/*
		if (!estudianteService.isEmployeeSsnUnique(employee.getId(), employee.getSsn())) {
			FieldError ssnError = new FieldError("employee", "ssn", messageSource.getMessage("non.unique.ssn",
					new String[] { estudiante.getSsn() }, Locale.getDefault()));
			result.addError(ssnError);
			return "registration";
		}*/

		estudianteService.saveOrUpdate(estudiante);

		model.addAttribute("error", 1);
		mensajes.clear();
		mensajes.add("Estudiante con Número de control" + estudiante.getNumeroControl() + " se ha registrado exitosamente");
		model.addAttribute("mensajes", mensajes);
		return "redirect:/estudiante/list";
	}
	
	/*
     * 
     */
	@RequestMapping(value = { "/estudiante", "/delete/{id}" }, method = RequestMethod.GET)
    public String deleteEstudiante(@PathVariable String id, Model model) {
		
		Estudiante student = new Estudiante();
		student.setNumeroControl(id);
        estudianteService.remove(student);
		model.addAttribute("error", 1);
		mensajes.clear();
		mensajes.add("El Estudiante con número de control " + id + " se ha eliminado exitosamente");
		model.addAttribute("mensajes", mensajes);
        return "redirect:/estudiante/list";
    }
	
	@RequestMapping(value = { "/estudiante", "/edit/{id}" }, method = RequestMethod.GET)
	public String editEstudiante(@PathVariable String id, Model model) {
        Estudiante student = estudianteService.get(id);
        model.addAttribute("estudiante", student);
        model.addAttribute("error", 0);
        model.addAttribute("edit", true);
        model.addAttribute("error", 0);
        return "addEstudiante";
    }

	@RequestMapping(value = { "/estudiante", "/edit/{id}" }, method = RequestMethod.POST)
	public String updateEstudiante(@Valid Estudiante student, BindingResult result,
            Model model, @PathVariable String id) {
 
        if (result.hasErrors()) {
            return "addEstudiante";
        }
 
        estudianteService.saveOrUpdate(student);
 
		model.addAttribute("error", 1);
		mensajes.clear();
		mensajes.add("El Estudiante con número de control " + id + " se ha modificado exitosamente");
        model.addAttribute("mensajes", mensajes);
        return "redirect:/estudiante/list";
    }
	
}
