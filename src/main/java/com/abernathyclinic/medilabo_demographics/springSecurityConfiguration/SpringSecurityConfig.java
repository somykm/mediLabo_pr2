package com.abernathyclinic.medilabo_demographics.springSecurityConfiguration;

import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig {
    public void filterChain(HttpSecurity http) throws Exception{

    }
}
