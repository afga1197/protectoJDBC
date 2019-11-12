/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.service.ModelCuadroService;
import com.howtodoinjava.demo.spring.service.ModelSeccionService;
import com.howtodoinjava.demo.spring.service.ModelService;
import com.howtodoinjava.demo.spring.service.UsuarioService;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Toshiba
 */
@Controller
public class InformationController {
    
   
    private UsuarioService usuarioService;
    
    
    
    private ModelService modelService;
    
    
    private ModelCuadroService modelCuadroService;
    
    
    private ModelSeccionService modelSeccionService;
    
    @RequestMapping(value = "/naturalDisasters", method = RequestMethod.GET)
    public String naturalDisasters(Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("5"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("5"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("5"));
        model.addAttribute("us",usuarioService.obtenerUsuarioLogueado());
        return "naturalDisasters";
    }
    
        
    @RequestMapping(value = "/hydrologicalDisasters", method = RequestMethod.GET)
    public String hydrologicalDisasters(Locale locale, Model model) {
        model.addAttribute("modulo",modelService.obtenerModulo("7"));
        model.addAttribute("secciones",modelSeccionService.obtenerSeccionesMod("7"));
        model.addAttribute("cuadros",modelCuadroService.obtenerCuadrosSeccion("7"));
        return "hydrologicalDisasters";
    }
    
    @RequestMapping(value = "/meteorologicalDisasters", method = RequestMethod.GET)
    public String  meteorologicalDisasters(Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("8"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("8"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("8"));      
        return "meteorologicalDisasters";
    }        
        
    @RequestMapping(value = "/geophysicalDisasters", method = RequestMethod.GET)
    public String geophysicalDisasters (Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("9"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("9"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("9"));       
        return "geophysicalDisasters";
    }    
     
            
    @RequestMapping(value = "/biologicalDisasters", method = RequestMethod.GET)
    public String biologicalDisasters (Locale locale, Model model) {
        model.addAttribute("modulo",modelService.obtenerModulo("10"));
        model.addAttribute("secciones",modelSeccionService.obtenerSeccionesMod("10"));
        model.addAttribute("cuadros",modelCuadroService.obtenerCuadrosSeccion("10"));
        return "biologicalDisasters";
    }
            
    @RequestMapping(value = "/naturalAct", method = RequestMethod.GET)
    public String naturalAct (Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("5"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("5"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("5"));
        return "naturalAct";
    }
    
    @RequestMapping(value = "/climateChange", method = RequestMethod.GET)
    public String climateChange(Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("2"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("2"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("2"));
        model.addAttribute("us",usuarioService.obtenerUsuarioLogueado());
        return "climateChange";
    }
    
    @RequestMapping(value = "/mitigation", method = RequestMethod.GET)
    public String mitigacion(Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("4"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("4"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("4"));
        model.addAttribute("us",usuarioService.obtenerUsuarioLogueado());
        return "mitigation";
    }
            
    @RequestMapping(value = "/currentWeather", method = RequestMethod.GET)
    public String currentWeather (Locale locale, Model model) {
        model.addAttribute("Modulo",modelService.obtenerModulo("3"));
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("3"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("3"));
        model.addAttribute("us",usuarioService.obtenerUsuarioLogueado());
        return "currentWeather";
    }
}
