package Nillouise.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
public class IndexAop
{
    @Pointcut("execution(* Nillouise.controller.IndexController.page(..))")
    public void signature(){};

    @Before("execution(* Nillouise.controller.IndexController.page(..))")
//    无法解决引用pointcut的问题
//    @Before("signature()")
    public void browse()
    {
        System.out.println("browse");
    }

}
