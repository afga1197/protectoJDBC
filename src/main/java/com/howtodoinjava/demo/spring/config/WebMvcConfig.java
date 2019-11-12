package com.howtodoinjava.demo.spring.config;

import com.howtodoinjava.demo.spring.dao.ForoDao;
import com.howtodoinjava.demo.spring.dao.ForoDaoImp;
import com.howtodoinjava.demo.spring.dao.ModelCuadroDao;
import com.howtodoinjava.demo.spring.dao.ModelCuadroDaoImp;
import com.howtodoinjava.demo.spring.dao.ModelDao;
import com.howtodoinjava.demo.spring.dao.ModelDaoImp;
import com.howtodoinjava.demo.spring.dao.ModelSeccionDao;
import com.howtodoinjava.demo.spring.dao.ModelSeccionDaoImp;
import com.howtodoinjava.demo.spring.dao.UsuarioDao;
import com.howtodoinjava.demo.spring.dao.UsuarioDaoImp;
import com.howtodoinjava.demo.spring.service.ForoService;
import com.howtodoinjava.demo.spring.service.ForoServiceImp;
import com.howtodoinjava.demo.spring.service.ModelCuadroService;
import com.howtodoinjava.demo.spring.service.ModelCuadroServiceImp;
import com.howtodoinjava.demo.spring.service.ModelSeccionService;
import com.howtodoinjava.demo.spring.service.ModelSeccionServiceImp;
import com.howtodoinjava.demo.spring.service.ModelService;
import com.howtodoinjava.demo.spring.service.ModelServiceImp;
import com.howtodoinjava.demo.spring.service.UserDetailsServiceImp;
import com.howtodoinjava.demo.spring.service.UsuarioService;
import com.howtodoinjava.demo.spring.service.UsuarioServiceImp;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.howtodoinjava.demo.spring"})
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    public InternalResourceViewResolver resolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setViewClass(JstlView.class);
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("messages");
        return source;
    }
    
    @Bean
    public ForoDao getForoDao() {
        return new ForoDaoImp();
    }
    
    @Bean
    public ModelCuadroDao getModelCuadroDao() {
        return new ModelCuadroDaoImp();
    }
    
    @Bean
    public ModelDao getModelDao() {
        return new ModelDaoImp();
    }
  
    @Bean
    public ModelSeccionDao getModelSeccionDao() {
        return new ModelSeccionDaoImp();
    }

    @Bean
    public UsuarioDao getUsuarioDao() {
        return new UsuarioDaoImp();
    }
    
    @Bean
    public ForoService getForoService() {
        return new ForoServiceImp();
    }
    
    @Bean
    public ModelCuadroService getModelCuadroService() {
        return new ModelCuadroServiceImp();
    }
    
    @Bean
    public ModelSeccionService getModelSeccionService() {
        return new ModelSeccionServiceImp();
    }
    
    @Bean
    public ModelService getModelService() {
        return new ModelServiceImp();
    }
    
    @Bean
    public UserDetailsService getUserDetailsService() {
        return new UserDetailsServiceImp();
    }
    
    @Bean
    public UsuarioService getUsuarioService() {
        return new UsuarioServiceImp();
    }
    
    
    
    

   @Override
   public Validator getValidator() {
      LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
      validator.setValidationMessageSource(messageSource());
      return validator;
   }
   
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/");
    }
   
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }
}
