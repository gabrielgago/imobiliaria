//package br.com.contadores.config;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletRegistration;
//
//import org.springframework.web.WebApplicationInitializer;
//import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
//import org.springframework.web.servlet.DispatcherServlet;
//
//public class ServletInitializer implements WebApplicationInitializer {
//    @Override
//    public void onStartup(ServletContext container) {
//    	System.out.println("Carregando a configuração do servlet.");
//    	AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
//        context.setConfigLocation("br.com.contadores.config.AppConfig");
// 
//        ServletRegistration.Dynamic dispatcher = container
//          .addServlet("dispatcher", new DispatcherServlet(context));
// 
//        dispatcher.setLoadOnStartup(1);
//        dispatcher.addMapping("/");
//    }
//}