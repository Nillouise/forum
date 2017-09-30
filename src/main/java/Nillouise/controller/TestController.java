package Nillouise.controller;

import Nillouise.model.PageModel;
import Nillouise.model.Tieba;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import static Nillouise.tool.RequestString.alltiezi;
import static Nillouise.tool.RequestString.userInfo;


@Controller
@RequestMapping("/test")
public class TestController
{
    @Autowired
    TieziService tieziService;


    @RequestMapping("")
    public String pageWitParam(Model model)
    {
        List<Tiezi> tieziAll = tieziService.getTieziAll();
        model.addAttribute(alltiezi, tieziAll);
//        model.addAttribute(userInfo,new User());
        return "/WEB-INF/tieba/banmian.jsp";
    }

}
