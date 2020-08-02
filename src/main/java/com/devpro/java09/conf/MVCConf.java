package com.devpro.java09.conf;
//cấu hình view

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration// xác định đây là 1 bean
@ControllerAdvice
@EnableWebMvc
@ComponentScan(basePackages = "com.devpro")// package cha
public class MVCConf implements WebMvcConfigurer {
	/**
	 * Chỉ cho Controller biết nơi chứa các trang HTML.
	 * @return
	 */
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}
	
	/**
	 * Mapping JS và CSS.
	 * Notes:
	 * 1. classpath <-> src/main/resources
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/META-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/META-INF/js/");
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:/META-INF/img/");
		registry.addResourceHandler("/vendor/**").addResourceLocations("classpath:/META-INF/vendor/");
		registry.addResourceHandler("/admin/**").addResourceLocations("classpath:/META-INF/admin/");
		registry.addResourceHandler("/summernote/**").addResourceLocations("classpath:/META-INF/summernote/");
		registry.addResourceHandler("/files/**").addResourceLocations("file:C:/Users/Hoang/java09blog/upload/");
		
	}

}
