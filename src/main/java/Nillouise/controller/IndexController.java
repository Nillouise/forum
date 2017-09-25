package Nillouise.controller;

import Nillouise.model.PageModel;
import Nillouise.model.Tieba;
import Nillouise.model.Tiezi;
import Nillouise.service.TiebaService;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import static Nillouise.tool.RequestString.alltiezi;




@Controller
public class IndexController
{

    @Autowired
    TieziService tieziService;

    @Autowired
    TiebaService tiebaService;

    @ModelAttribute("tiezi")
    public Tiezi setThread()
    {
        return new Tiezi();
    }

    @RequestMapping({"index","/"})
    public String page(Model model)
    {
        //废弃，改用tieba模式
//        model.addAttribute(alltiezi, tieziService.getTieziAll());
//        return "index.jsp";

        List<Tieba> allTieba = tiebaService.getAllTieba();
        model.addAttribute("alltieba",allTieba);
        PageModel p = new PageModel(3,10,2);
        model.addAttribute("pagemodel",p);

        return  "/index.jsp";
    }

    public String test()
    {
        return "";
    }

}
