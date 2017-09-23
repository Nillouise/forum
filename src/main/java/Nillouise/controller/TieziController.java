package Nillouise.controller;

import Nillouise.model.Floor;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import Nillouise.service.TieziService;
import org.hibernate.validator.constraints.Length;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.FixedLocaleResolver;

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

    static class TieziForm
    {
        @Length(min = 1,max = 50,message = "Tiezi title no empty")
        String title;
        @Length(min = 1,max = 5000,message = "Tiezi content no empty")
        String content;

        public String getTitle()
        {
            return title;
        }

        public void setTitle(String title)
        {
            this.title = title;
        }

        public String getContent()
        {
            return content;
        }

        public void setContent(String content)
        {
            this.content = content;
        }
    }

    @RequestMapping("/addthread.do")
    public String addthreadDo(HttpSession session, @Validated TieziForm form, Errors errors, int tiebaid)
    {
        if(errors.hasErrors())
        {
            return "redirect:/tieba?tiebaname="+session.getAttribute("curtieba");
        }

        User user = (User)session.getAttribute(userInfo);
        if(user==null)
        {
            return "redirect:/login";
        }
        Tiezi tiezi =new Tiezi();
        tiezi.setTiebaid(tiebaid);
        tiezi.setTitle(form.getTitle());
        tieziService.addThread(user, tiezi);
        Floor floor = new Floor();
        floor.setContent(form.getContent());
        tieziService.addFloor(user,tiezi.getId(),floor);


        return "redirect:/tieba?tiebaname="+session.getAttribute("curtieba");
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
