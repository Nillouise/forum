package Nillouise.controller;

import Nillouise.model.Tiezi;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import static Nillouise.tool.RequestString.alltiezi;




@Controller
public class IndexController
{

    @Autowired
    TieziService tieziService;

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
        return  "redirect:/tieba/lol";
    }

    public String test()
    {
        return "";
    }

}
