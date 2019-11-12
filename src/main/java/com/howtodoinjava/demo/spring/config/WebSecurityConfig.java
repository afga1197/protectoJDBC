package com.howtodoinjava.demo.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
  
  @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/biologicalDisasters").permitAll()
                .antMatchers("/climateChange").permitAll()
                .antMatchers("/currentWeather").permitAll()
                .antMatchers("/editUser").permitAll()
                .antMatchers("/geophysicalDisasters").permitAll()
                .antMatchers("/meteorologicalDisasters").permitAll()
                .antMatchers("/hydrologicalDisasters").permitAll()
                .antMatchers("/mitigation").permitAll()
                .antMatchers("/naturalAct").permitAll()
                .antMatchers("/naturalDisasters").permitAll()
                .antMatchers("/register").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("/managementComment").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/configClimateChange").hasAnyAuthority("ADMIN")
                .antMatchers("/configCurrentWeather").hasAnyAuthority("ADMIN")
                .antMatchers("/contentManagement").hasAnyAuthority("ADMIN")
                .antMatchers("/configBiological").hasAnyAuthority("ADMIN")
                .antMatchers("/configGeophysical").hasAnyAuthority("ADMIN")
                .antMatchers("/configHome").hasAnyAuthority("ADMIN")
                .antMatchers("/configHydrological").hasAnyAuthority("ADMIN")
                .antMatchers("/configMetereological").hasAnyAuthority("ADMIN")
                .antMatchers("/configMitigation").hasAnyAuthority("ADMIN")
                .antMatchers("/configNaturalDisasters").hasAnyAuthority("ADMIN")
                .antMatchers("/control").hasAnyAuthority("ADMIN")
                .antMatchers("/foro").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/eliminarUsuario").permitAll()
                .antMatchers("/selectUser").permitAll()
                .antMatchers("/guardarUsuario").permitAll()
                .antMatchers("/modificarUsuario").permitAll()
                .antMatchers("/guardarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/modificarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/eliminarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/editComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/loginAction").permitAll()
                .antMatchers("/error").permitAll()
                .antMatchers("/accesoNoAutorizado").permitAll()
                .anyRequest().authenticated()
                .and()
                // form login
                .csrf().disable().formLogin()
                .loginPage("/login").loginProcessingUrl("/loginAction").permitAll()
                .usernameParameter("User")
                .passwordParameter("Password")
                .failureUrl("/error")
                .defaultSuccessUrl("/")
                .and()
                // logout
                .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login").and()
                .exceptionHandling()
                .accessDeniedPage("/accesoNoAutorizado");     
    }
        
    @Override
    public void configure(WebSecurity web) throws Exception {
            web.ignoring().antMatchers("/assets/**");
    }
}
