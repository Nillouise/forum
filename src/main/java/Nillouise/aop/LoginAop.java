package Nillouise.aop;

import org.aspectj.lang.JoinPoint;

import javax.servlet.http.HttpSession;


public class LoginAop
{
//    jointPoint是aop会自动注入的参数，只要定义了就可以了
    void afterLogin(JoinPoint joinPoint,HttpSession session)
    {
        System.out.println(joinPoint.getArgs());
        System.out.println("login successful");
    }

}
