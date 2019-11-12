/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.service.UsuarioService;
import java.security.Principal;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Toshiba
 */
@Controller
public class LoginController {
      
    @Autowired
    private UsuarioService userService;
    
    @RequestMapping(value = "/loginAction", method = RequestMethod.GET)
    public String login(Locale locale, Model model, Principal principal) {
        return "home";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Locale locale, Model model) {
        return "login";
    }
    
    
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(Locale locale, Model model) {
        model.addAttribute("ERROR_MESSAGE","Usuario o contraseña incorrectos");
        return "login";
    }
            
    @RequestMapping(value = "/accesoNoAutorizado", method = RequestMethod.GET)
    public String accesoNoAutorizado(Locale locale, Model model, Principal principal) {
        return "accesoNoAutorizado";
    }
    
    
     
}
