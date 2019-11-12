package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Seccion;
import com.howtodoinjava.demo.spring.service.ModelSeccionService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Toshiba
 */
@Controller
public class ConfigSectionController {
        
    private ModelSeccionService modelSeccionService;
    
    @ModelAttribute("section")
    public Seccion formBackingObject() {
        return new Seccion();
    }
    
    @PostMapping("/modificarSeccion") //llama controlador con el metodo
    public String updateSeccion(@ModelAttribute("section") @Valid Seccion seccion, BindingResult result, Model model) {
             
        if (result.hasErrors()) {
            return "redirect:contenManagement";
        }
        modelSeccionService.modificarSeccion(seccion);
        return "redirect:contenManagement";
    }
 
}
