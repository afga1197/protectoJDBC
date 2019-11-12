package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Comentario;
import com.howtodoinjava.demo.spring.service.ForoService;
import com.howtodoinjava.demo.spring.service.UsuarioService;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ForoController {
    
    
    private UsuarioService usuarioService;
    
    
    ForoService foroService;
    
    
    @RequestMapping(value = "/foro", method = RequestMethod.GET)
    public String Foro(Locale locale, Model model) {
        model.addAttribute("info",foroService.obtenerComentarios());
        model.addAttribute("us",usuarioService.obtenerUsuario());
        return "foro";
    }
    
    @RequestMapping(value = "/managementComment", method = RequestMethod.GET)
    public String managementComment(Locale locale, Model model) {
        String user = usuarioService.obtenerUsuarioLogueado();
        model.addAttribute("con",foroService.obtenerSusComentarios(user));
        return "managementComment";
    }
    
    @ModelAttribute("comentarios")
    public Comentario formBackingObject() {
        return new Comentario();
    }
    
    @PostMapping("/guardarComentario") //llama controlador con el metodo
    public String guardarComentario(@ModelAttribute("comentarios") @Valid Comentario comentario, BindingResult result, Model model, 
            HttpServletRequest httpServletRequest, Locale locale, RedirectAttributes redirectAttributes ) {
        foroService.crearComentario(comentario);
        model.addAttribute("info",foroService.obtenerComentarios());
        model.addAttribute("us",usuarioService.obtenerUsuario());
        model.addAttribute("save","comentario guardado");
        return "foro";
    }
    
    @PostMapping("/modificarComentario") //llama controlador con el metodo
    public String updateComentario(@ModelAttribute("comentarios") @Valid Comentario comentario, BindingResult result, Model model) {
        foroService.modificarComentario(comentario);
        String user = usuarioService.obtenerUsuarioLogueado();
        model.addAttribute("info",foroService.obtenerComentarios());
        model.addAttribute("us",usuarioService.obtenerUsuario());
        model.addAttribute("edit","comentario editado");
        return "foro";
    }
    
    @GetMapping("/eliminarComentario") //llama controlador con el metodo
    public String eliminarComentario(@RequestParam("algox") String id, Model model) {
        foroService.eliminarComentario(Integer.parseInt(id));
        String user = usuarioService.obtenerUsuarioLogueado();
        model.addAttribute("us",usuarioService.obtenerUsuario());
        model.addAttribute("info",foroService.obtenerComentarios());
        model.addAttribute("del","comentario eliminado");
        return "foro";
    }
    
    @RequestMapping(value = "/editComentario", method = RequestMethod.GET)
    public String editCom(@RequestParam("algox") String id, Model model) {
        model.addAttribute("comm", foroService.obtenerComentario(id));
        return "editComentario";
    }
    
}
