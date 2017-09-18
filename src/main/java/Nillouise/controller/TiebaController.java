package Nillouise.controller;


import Nillouise.model.Tieba;
import Nillouise.service.TiebaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/tieba")
public class TiebaController
{
    @Autowired
    TiebaService tiebaService;

    @RequestMapping("/{tiebaname}")
    public String page(@PathVariable("tiebaname")String tiebaname, Model model)
    {
        Tieba tieba = tiebaService.getTieba(tiebaname);
        model.addAttribute("tiebaname",tiebaname);
        if(tieba==null)
        {
            return "/WEB-INF/notfoundtieba.jsp";
        }else{
            //to do
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
