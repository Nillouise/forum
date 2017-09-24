package Nillouise.controller;


import Nillouise.model.Tieba;
import Nillouise.service.TiebaService;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import static Nillouise.tool.RequestString.alltiezi;


@Controller
@RequestMapping("/tieba")
public class TiebaController
{
    @Autowired
    TiebaService tiebaService;
    @Autowired
    TieziService tieziService;

    //这个方法已经弃用了
    @RequestMapping("/{tiebaname}")
    public String page(@PathVariable("tiebaname")String tiebaname, Model model)
    {
        Tieba tieba = tiebaService.getTieba(tiebaname);
        model.addAttribute("tiebaname",tiebaname);
        if(tieba==null)
        {
            return "/WEB-INF/notfoundtieba.jsp";
        }else{
            model.addAttribute(alltiezi, tieziService.getTieziByTieba(tieba.getId()));
            model.addAttribute("tiebaid",tieba.getId());
            return "/WEB-INF/showtiezi.jsp";
        }
    }

    @RequestMapping("")
    public String pageWitParam(String tiebaname,Integer page, Model model)
    {
        Tieba tieba = tiebaService.getTieba(tiebaname);
        model.addAttribute("tiebaname",tiebaname);
        if(tieba==null)
        {
            return "/WEB-INF/notfoundtieba.jsp";
        }else{
//            model.addAttribute(alltiezi, tieziService.getTieziByTieba(tieba.getId()));
            model.addAttribute(alltiezi, tieziService.getTieziLimit(tieba.getId(),0,10));
            model.addAttribute("tiebaid",tieba.getId());
            return "/WEB-INF/showtiezi.jsp";
        }
    }


    @RequestMapping("/create.do")
    public String create(String tiebaname)
    {
        tiebaService.createTieba(tiebaname);
        return "redirect:/tieba/"+tiebaname;
    }

}
