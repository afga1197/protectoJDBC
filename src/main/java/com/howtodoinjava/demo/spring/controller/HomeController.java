/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Usuario;
import com.howtodoinjava.demo.spring.service.ModelCuadroService;
import com.howtodoinjava.demo.spring.service.ModelSeccionService;
import com.howtodoinjava.demo.spring.service.ModelService;
import com.howtodoinjava.demo.spring.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sala4
 */
    
@Controller
public class HomeController {

    @Autowired
    private ModelService modelService;
    
    @Autowired
    private ModelCuadroService modelCuadroService;
    
    @Autowired
    private ModelSeccionService modelSeccionService;
    
    @Autowired
    private UsuarioService usuarioService;

/**
 * Simply selects the home view to render by returning its name.
     * @param us
     * @param locale
     * @param model
     * @return 
 */
    @RequestMapping(value = "/", method = RequestMethod.GET)
        public String home(Model model) {
            model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("1"));
            model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("1"));
            model.addAttribute("us",usuarioService.obtenerUsuarioLogueado());
            model.addAttribute("rol",usuarioService.obtenerRol());
            return "home";
    }
}

