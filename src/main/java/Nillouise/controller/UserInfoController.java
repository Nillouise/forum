package Nillouise.controller;

import Nillouise.model.User;
import Nillouise.tool.RequestString;
import com.sun.javafx.binding.StringConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

import static Nillouise.tool.RequestString.userInfo;

/**
 * Created by win7x64 on 2017/8/25.
 */
@Controller
public class UserInfoController
{
    @RequestMapping("/userinfo")
    public String page(HttpSession session)
    {
        return "WEB-INF/userinfo.jsp";
    }
}
