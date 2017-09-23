package Nillouise.interceptor;


import Nillouise.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static Nillouise.tool.RequestString.userInfo;

public class AuthorizationInterceptor implements HandlerInterceptor
{
    private static final String[] IGNORE_URI={"/login.do","/register.do"};


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception
    {
        //记录用户当前访问的贴吧
        String tiebaName = request.getParameter("tiebaname");
        if(tiebaName!=null)
        {
            request.getSession().setAttribute("curtieba",tiebaName);
        }

        //已登录
        User user = (User)request.getSession().getAttribute(userInfo);
        if(user!=null)
        {
            return true;
        }

        //跳过不用权限检查在（IGNORE_URI）的页面
        String servletPath = request.getServletPath();
        for (String s : IGNORE_URI)
        {
            if(servletPath.contains(s))
            {
                return true;
            }
        }

        //跳过非.do的页面
        String s = servletPath.substring(servletPath.lastIndexOf(".")+1);
        if(servletPath.substring(servletPath.lastIndexOf(".")+1).equals("do"))
        {
            request.setAttribute("message","请登录");
            request.getRequestDispatcher("error.jsp").forward(request,response);
            return false;
        }


        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception
    {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception
    {

    }
}
