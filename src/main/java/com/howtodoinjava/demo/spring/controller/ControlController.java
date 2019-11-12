package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Usuario;
import com.howtodoinjava.demo.spring.service.ForoService;
import com.howtodoinjava.demo.spring.service.UsuarioService;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ControlController  {
    
    
    private UsuarioService userService;
    
    
    private ForoService foroService;
       
    @RequestMapping(value = "/control", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN')")
    public String control(Locale locale, Model model) {
        model.addAttribute("usuarios",userService.mostrarUsuarios());
        model.addAttribute("numUser",userService.numUsuario());
        model.addAttribute("numComments",foroService.obtenerNumComentarios());
        model.addAttribute("us",userService.obtenerUsuarioLogueado());
        return "control";
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Locale locale, Model model) {
        model.addAttribute("us",userService.obtenerUsuarioLogueado());
        return "register";
    }
    
    @RequestMapping(value = "/editUser", method = RequestMethod.GET)
    public String editUser(@RequestParam("algox") String id, Model model) {
        model.addAttribute("user", userService.obtenerUsuario(Integer.parseInt(id)));
        model.addAttribute("us",userService.obtenerUsuarioLogueado());
        return "editUser";
    }
    
    @ModelAttribute("usuario")
    public Usuario formBackingObject() {
        return new Usuario();
    }
       
    @GetMapping("/eliminarUsuario") //llama controlador con el metodo
    public String deleteUser(@RequestParam("algox") String id) {
        userService.eliminar(Integer.parseInt(id));
        return "redirect:control";
    }
    
    @GetMapping("/selectUser") //llama controlador con el metodo
    public String  selectUser(@RequestParam("algoy") String user) {
        return "redirect:control";
    }
    
    @PostMapping("/guardarUsuario") //llama controlador con el metodo
    public String saveUser(@ModelAttribute("usuario") @Valid Usuario usuario, BindingResult result, Model model, 
            HttpServletRequest httpServletRequest, Locale locale, RedirectAttributes redirectAttributes ) {
        if (result.hasErrors()) {
            model.addAttribute("usuarios", userService.mostrarUsuarios());
            return "register";
        }

        if(userService.existeUsuario(usuario.getUser())== null){
            userService.guardar(usuario);
            model.addAttribute("SUCCESS_MESSAGE","El usuario "+usuario.getUser()+" fue registrado, inicia sesi�n");
            return "login";
        }else{
            model.addAttribute("ERROR_MESSAGE","El usuario "+usuario.getUser()+" ya existe");
            return "register";
        }
    }
    
    @PostMapping("/modificarUsuario") //llama controlador con el metodo
    public String updateUser(@ModelAttribute("usuario") @Valid Usuario usuario, BindingResult result, Model model) {
             
        if (result.hasErrors()) {
            model.addAttribute("usuarios", userService.mostrarUsuarios());
            return "control";
        }
        userService.modificar(usuario);
        model.addAttribute("edit","Datos guardados");
        model.addAttribute("usuarios",userService.mostrarUsuarios());
        model.addAttribute("numUser",userService.numUsuario());
        model.addAttribute("numComments",foroService.obtenerNumComentarios());
        model.addAttribute("us",userService.obtenerUsuarioLogueado());
        return "control";
    }
    
    
}
