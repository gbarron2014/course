package com.utng.integradora.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorController {

	 @RequestMapping(value = "errors", method = RequestMethod.GET)
	    public ModelAndView renderErrorPage(HttpServletRequest httpRequest) {
	         
	        ModelAndView errorPage = new ModelAndView("errorPage");
	        
	        String errorMsg = "";
	        int httpErrorCode = getErrorCode(httpRequest);
	 
	        switch (httpErrorCode) {
	            case 400: {
	                errorMsg = "El servidor no puede o no procesará la solicitud debido a algo que se percibe como un error del cliente";
	                break;
	            }
	            case 401: {
	                errorMsg = "La solicitud no se ha aplicado porque carece de credenciales de autenticación válidas para el recurso de destino";
	                break;
	            }
	            case 404: {
	                errorMsg = "El recurso solicitado no fue encontrado";
	                break;
	            }
	            case 500: {
	                errorMsg = "El servidor encontró una condición inesperada que le impidió cumplir con la solicitud.";
	                break;
	            }
	        }
	        errorPage.addObject("errorMsg", errorMsg);
	        
	        return errorPage;
	    }
	     
	    private int getErrorCode(HttpServletRequest httpRequest) {
	        return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
	    }
}
