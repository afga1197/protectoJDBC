package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Cuadro_seccion;
import com.howtodoinjava.demo.spring.service.ModelCuadroService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ConfigSquareSectionController {
          
    
    private ModelCuadroService modelSquareService;
    
    @ModelAttribute("square")
    public Cuadro_seccion formBackingObject() {
        return new Cuadro_seccion();
    }
    
    @PostMapping("/modificarCuadroSeccion") //llama controlador con el metodo
    public String updateCuadroSeccion(@ModelAttribute("square") @Valid Cuadro_seccion cuadro, BindingResult result, Model model) {
             
        if (result.hasErrors()) {
            return "redirect:contenManagement";
        }
        modelSquareService.modificarCuadroSeccion(cuadro);
        return "redirect:contenManagement";
    }

}
