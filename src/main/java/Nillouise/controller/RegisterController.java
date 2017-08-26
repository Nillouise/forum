package Nillouise.controller;

import Nillouise.model.User;
import Nillouise.service.RegistService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.imageio.spi.RegisterableService;
import javax.validation.Valid;


@Controller
public class RegisterController
{
    @Autowired
    RegistService registService;

    @RequestMapping(value = "register")
    public String page(Model model)
    {
        model.addAttribute("user",new User());

        return "WEB-INF/register.jsp";
    }

    @RequestMapping(value = "register.do")
    public String doRegister(@Valid User user, Errors errors)
    {
        System.out.println(user);

        if(!registService.addUser(user))
        {
            //第一个参数是field，也就是绑定到那个user的field中
            errors.rejectValue("username","username.duplicate","duplicate");
        }

        if(errors.hasErrors())
        {
            return "WEB-INF/register.jsp";
        }else{
            return "redirect:/index";
        }
    }
}
