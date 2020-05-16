package org.hv;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * @author wujianchuan 2018/12/25
 */
@SpringBootApplication
@ComponentScan(basePackages = {"org.hv.*"})
public class Application {
    public static void main(final String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
