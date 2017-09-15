package Nillouise.aop;

import Nillouise.controller.JsonController;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


@Aspect
public class IndexAop
{
    @Pointcut("execution(* Nillouise.controller.IndexController.page(..))")
    public void signature(){}
    @Pointcut("within(Nillouise.controller.*)")
    public void allcontroller(){}

    Logger LOGGER = LoggerFactory.getLogger(JsonController.class);


//    @Before("execution(* Nillouise.controller.IndexController.page(..))")
//    无法解决引用pointcut的问题
//    @Before("signature()")
    public void browse()
    {
        System.out.println("browse");
    }

//    在controller这里用aop似乎会有问题，就是advicer不能正确返回string值给spring框架用来解决resolver问题
    @Around("signature()")
    public String watchConsumeTime(ProceedingJoinPoint jp)
    {
        String r = "index.jsp";
        try
        {
            long startTime=System.currentTimeMillis();
            r = (String) jp.proceed();
            long endTime = System.currentTimeMillis();
            LOGGER.info("controller %s consume %d ms",jp.getTarget(),endTime-startTime);
        } catch (Throwable throwable)
        {
            throwable.printStackTrace();
        } finally
        {
            return r;
        }
    }

}
