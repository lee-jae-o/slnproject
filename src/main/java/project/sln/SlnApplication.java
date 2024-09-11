package project.sln;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistration;

@SpringBootApplication
public class SlnApplication {

    public static void main(String[] args) {
        SpringApplication.run(SlnApplication.class, args);
    }




//    public ResourceHandlerRegistration addResourceHandler(String... pathPatterns) {
//        ResourceHandlerRegistration registration = new ResourceHandlerRegistration(pathPatterns);
//        this.registrations.add(registration);
//        return registration;
//    }
}