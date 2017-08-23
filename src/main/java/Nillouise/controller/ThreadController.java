package Nillouise.controller;

import Nillouise.model.Tiezi;
import Nillouise.model.User;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

import static Nillouise.tool.RequestString.userInfo;


@Controller
public class ThreadController
{
    @Autowired
    TieziService tieziService;

    @RequestMapping("addthread.do")
    public String addthreadDo(Tiezi tiezi, HttpSession session)
    {
        User user = (User)session.getAttribute(userInfo);
        if(user==null)
        {
            return "redirect:/login";
        }
        tieziService.addThread(user, tiezi);

        return "redirect:/index";
    }


}
