package Nillouise.controller;

import Nillouise.model.User;
import Nillouise.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import static Nillouise.tool.SessionString.userInfo;


@Controller
public class LoginController
{
    @Autowired
    LoginService loginService;

    //在这里注释modelattribute，返回的并不是视图的名称（也不能转向）
    //似乎在这里进行权限检查并转向，其实不合适。
    @ModelAttribute
    public String check(HttpSession session,String form)
    {
        if(session.getAttribute("user")!=null)
        {
            return "redirect:/index.jsp";
        }else {
            return form;
        }
    }

    @RequestMapping(value = "/login.do")
    public String loginDo(@Valid User user, Errors errors,HttpSession session)
    {
        if(!loginService.check(user))
        {
            errors.rejectValue("username","userinconsistent","user inconsistent");
        }
        if(errors.hasErrors())
        {
            return "WEB-INF/login.jsp";
        }else {
            session.setAttribute(userInfo,user);
            return "index.jsp";
        }
    }


    @RequestMapping(value = "/login")
    public String page(Model model)
    {
        model.addAttribute("user",new User());

        return "WEB-INF/login.jsp";
    }

}
