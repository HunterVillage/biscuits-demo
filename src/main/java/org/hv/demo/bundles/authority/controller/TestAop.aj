package org.hv.demo.bundles.authority.controller;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author wujianchuan
 */
@Component
@Aspect
public class TestAop {

    @Pointcut("execution(* org.hv.demo.bundles.authority.controller.TestController.get())")
    public void verify() {
    }

    @Before("verify()")
    public void before(JoinPoint joinPoint) {
        System.out.println("=======================before=======================");
    }

    @AfterReturning(value = "verify()", returning = "rtv")
    public void after(JoinPoint joinPoint, Object rtv) {
        System.out.println("=======================after=======================");
    }

    @Around("verify()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("=======================around=======================");
        return joinPoint.proceed();
    }
}
