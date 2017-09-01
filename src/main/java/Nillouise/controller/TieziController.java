package Nillouise.controller;

import Nillouise.model.Floor;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import Nillouise.service.TieziService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

import static Nillouise.tool.RequestString.userInfo;


@Controller
public class TieziController
{

    @Autowired
    TieziService tieziService;

    @ModelAttribute("floor")
    public Floor page()
    {
        return new Floor();
    }

    @RequestMapping("/addthread.do")
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

    @RequestMapping("/selecttiezi")
    public String selectTiezi(Model model, @RequestParam Integer tieziid)
    {
        if(tieziid==null)
        {
            return "redirect:/index.jsp";
        }
        Tiezi tiezi = tieziService.getTiezi(tieziid);
        model.addAttribute("tiezi",tiezi);


        return "WEB-INF/tiezi.jsp";
    }

    @RequestMapping("/addfloor.do")
    public String addFloor(Integer tieziid, HttpSession session,Floor floor)
    {
        User user = (User)session.getAttribute(userInfo);
        floor.setUserid(user.getId());
        Tiezi tiezi=null;
        if(tieziid!=null)
        {
            tiezi = tieziService.getTiezi(tieziid);
            floor.setTieziid(tiezi.getId());
        }
        if(tiezi != null)
        {
            tieziService.addFloor(user,tieziid,floor);
            return "redirect:/selecttiezi?tieziid="+tiezi.getId();
        }else{
            return "redirect:/index";
        }
    }
}
