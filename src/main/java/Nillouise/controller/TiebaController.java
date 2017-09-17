package Nillouise.controller;


import Nillouise.model.Tieba;
import Nillouise.service.TiebaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
        if(tieba==null)
        {
            model.addAttribute("tiebaname",tiebaname);
            return "/WEB-INF/notfoundtieba.jsp";
        }else{

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
