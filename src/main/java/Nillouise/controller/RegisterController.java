package Nillouise.controller;

import Nillouise.model.User;
import Nillouise.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.imageio.spi.RegisterableService;
import javax.validation.Valid;

/**
 * Created by win7x64 on 2017/8/23.
 */
@Controller
public class RegisterController
{

    @Autowired
    RegistService registService;

    @RequestMapping(value = "register")
    public String page()
    {
        return "WEB-INF/register.jsp";
    }

    @RequestMapping(value = "register.do")
    public String doRegister(@Valid User user, Errors errors)
    {
        System.out.println(user);


        if(!registService.addUser(user)||errors.hasErrors())
        {
            return "redirect:/register";
        }else{
            return "redirect:/index.jsp";
        }
    }
}
