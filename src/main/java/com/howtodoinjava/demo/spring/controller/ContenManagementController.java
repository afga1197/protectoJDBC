package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import com.howtodoinjava.demo.spring.model.Seccion;
import com.howtodoinjava.demo.spring.service.ModelCuadroService;
import com.howtodoinjava.demo.spring.service.ModelSeccionService;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Toshiba
 */
@Controller
public class ContenManagementController {
        
    private String num="";
        
    @Autowired
    private ModelCuadroService modelCuadroService;
    
    @Autowired
    private ModelSeccionService modelSeccionService;
       
    @RequestMapping(value = "/contenManagement", method = RequestMethod.GET)
    public String ContenManagement(Locale locale, Model model) {
        return "contenManagement";
    }
    
    @RequestMapping(value = "/configHome", method = RequestMethod.GET)
    public String ConfigHome(Locale locale, Model model) {
        model.addAttribute("Secciones", modelSeccionService.obtenerSeccionesMod("1"));
        model.addAttribute("Cuadros", modelCuadroService.obtenerCuadrosSeccion("1"));
        num="1";
        return "configHome";
    }   
    
    @RequestMapping(value = "/configHydrological", method = RequestMethod.GET)
    public String configHidrologico (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("7"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("7"));
        num="7";
        return "configHydrological";
    }
    
    @RequestMapping(value = "/configMetereological", method = RequestMethod.GET)
    public String configMetereologico (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("8"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("8"));
        num="8";
        return "configMetereological";
    }
    
    @RequestMapping(value = "/configGeophysical", method = RequestMethod.GET)
    public String configGeofisico (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("9"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("9"));
        num="9";
        return "configGeophysical";
    }
    
    @RequestMapping(value = "/configBiological", method = RequestMethod.GET)
    public String configBiologico (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("10"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("10"));
        num="10";
        return "configBiological";
    }
    
    @RequestMapping(value = "/configClimateChange", method = RequestMethod.GET)
    public String configClimateAction (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("2"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("2"));
        num="2";
        return "configClimateChange";
    }
            
    @RequestMapping(value = "/configCurrentWeather", method = RequestMethod.GET)
    public String configCurrentWeather (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("3"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("3"));
        num="3";
        return "configCurrentWeather";
    }        
            
    @RequestMapping(value = "/configMitigation", method = RequestMethod.GET)
    public String configMitigation (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("4"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("4"));
        num="4";
        return "configMitigation";
    }      
    
    @RequestMapping(value = "/configNaturalDisasters", method = RequestMethod.GET)
    public String configNaturalDisasters  (Locale locale, Model model) {
        model.addAttribute("Secciones",modelSeccionService.obtenerSeccionesMod("5"));
        model.addAttribute("Cuadros",modelCuadroService.obtenerCuadrosSeccion("5"));
        num="5";
        return "configNaturalDisasters";
    }        
            
            
    @ModelAttribute("seccion")
    public Seccion formBackingObject() {
        return new Seccion();
    }
    
    @ModelAttribute("cuadro")
    public Cuadro_seccion formBackingObject_1() {
        return new Cuadro_seccion();
    }
    
    @PostMapping("/modificarInfoSeccion") //llama controlador con el metodo
    public String modificarInfoSeccion(@ModelAttribute("seccion") @Valid Seccion seccion, BindingResult result, Model model) {
             
        if (result.hasErrors()) {
            return "configHome";
        }
        modelSeccionService.modificarSeccion(seccion);
        switch (num) {
            case "1":
                return "redirect:configHome";
            case "2":
                return "redirect:configClimateChange";
            case "3":
                return "redirect:configCurrentWeather";
            case "4":
                return "redirect:configMitigation";
            case "5":
                return "redirect:configNaturalDisasters";
            case "6":
                return "redirect:/";
            case "7":
                return "redirect:confiHydrological";
            case "8":
                return "redirect:configMetereological";
            case "9":
                return "redirect:configGeophysical";
            default:
                return "redirect:configBiological";
        }
    }
    
    
    
    
    @PostMapping("/modificarInfoCuadro") //llama controlador con el metodo
    public String modificarInfoCuadro(@ModelAttribute("cuadro") @Valid Cuadro_seccion cuadro_seccion, BindingResult result, Model model) {
             
        if (result.hasErrors()) {
            return "configHome";
        }
        modelCuadroService.modificarCuadroSeccion(cuadro_seccion);
            
        switch (num) {
            case "1":
                return "redirect:configHome";
            case "2":
                return "redirect:configClimateChange";
            case "3":
                return "redirect:configCurrentWeather";
            case "4":
                return "redirect:configMitigation";
            case "5":
                return "redirect:configNaturalDisasters ";
            case "6":
                return "redirect:/";
            case "7":
                return "redirect:confiHydrological";
            case "8":
                return "redirect:configMetereological";
            case "9":
                return "redirect:configGeophysical";
            default:
                return "redirect:configBiological";
        }
    }
    
    
    
    
}
