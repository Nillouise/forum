package Nillouise.controller;

import Nillouise.model.User;
import Nillouise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.*;
import java.util.List;

import static Nillouise.tool.RequestString.userInfo;
import static Nillouise.tool.RequestString.verificationcode;


@Controller
public class LoginController
{

    @Autowired
    UserService userService;

    //在这里注释modelattribute，返回的并不是视图的名称（也不能转向）
    //似乎在这里进行权限检查并转向，其实不合适。
//    @ModelAttribute
//    public String check(HttpSession session,String form)
//    {
//        if(session.getAttribute("user")!=null)
//        {
//            return "redirect:/index.jsp";
//        }else {
//            return form;
//        }
//    }

    //刷新验证码
    public void refreshCode(HttpSession session)
    {

        Random random = new Random();
        char[] codeChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456".toCharArray();
        String captcha = "";
        for (int i = 0; i < 4; i++)
        {
            captcha+=codeChar[random.nextInt(codeChar.length)];
        }
        session.setAttribute(verificationcode,captcha);
        return;
    }


    @RequestMapping(value = "/login.do")
    public String loginDo(HttpSession session,@Valid User user, Errors errors, @RequestParam String captcha)
    {
        String corCode = (String) session.getAttribute(verificationcode);
        if(corCode==null)
        {
            return "WEB-INF/login.jsp";
        }else if(!corCode.toLowerCase().equals(captcha.toLowerCase())){
            return "WEB-INF/login.jsp";
        }

        user = userService.checkUser(user.getUsername(),user.getPassword());
        if(user==null)
        {
            errors.rejectValue("username","userinconsistent","user inconsistent");
        }
        if(errors.hasErrors())
        {
            return "WEB-INF/login.jsp";
        }else {
            session.setAttribute(userInfo,user);
            return "redirect:/index";
        }
    }


    @RequestMapping(value = "/login")
    public String page(Model model)
    {
        model.addAttribute("user",new User());

        return "WEB-INF/login.jsp";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession)
    {
        httpSession.invalidate();
        return "redirect:/index";
    }

    @RequestMapping(value = verificationcode)
    public void verificationcode(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException
    {
        refreshCode(session);
        int width = 63;
        int height = 37;
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        Random random = new Random();

        //生成缓冲区image类
        BufferedImage image = new BufferedImage(width, height, 1);
        //产生image类的Graphics用于绘制操作
        Graphics g = image.getGraphics();
        //Graphics类的样式
        g.setColor(this.getRandColor(200, 250));
        g.setFont(new Font("Times New Roman",0,28));
        g.fillRect(0, 0, width, height);
        //绘制干扰线
        for(int i=0;i<40;i++){
            g.setColor(this.getRandColor(130, 200));
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            g.drawLine(x, y, x + x1, y + y1);
        }

        char[] strCode = ((String)session.getAttribute(verificationcode)).toCharArray();

        int i=0;
        for (char c : strCode)
        {
            g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
            g.drawString(""+c, 13*i+6, 28);
            i++;
        }
        g.dispose();
        ImageIO.write(image, "JPEG", response.getOutputStream());
        response.getOutputStream().flush();
    }

    //创建颜色
    Color getRandColor(int fc,int bc){
        Random random = new Random();
        if(fc>255)
            fc = 255;
        if(bc>255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r,g,b);
    }
}
