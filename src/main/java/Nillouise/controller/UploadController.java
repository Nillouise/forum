package Nillouise.controller;

import Nillouise.model.Document;
import Nillouise.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;

import static Nillouise.tool.RequestString.userInfo;


@RequestMapping("/upload")
@Controller
public class UploadController
{
    @RequestMapping("/avatar.do")
    public String avatar(HttpSession session,HttpServletRequest request, @RequestParam("file")MultipartFile file) throws IOException
    {
        if(file.isEmpty())
        {
            return "error.html";
        }

        String path = request.getServletContext().getRealPath("/images/");

        String filename = file.getOriginalFilename();
        File filePath = new File(path,filename);

        if(!filePath.getParentFile().exists())
        {
            filePath.getParentFile().mkdir();
        }
        String newFilename = new Date().getTime()+new String(filename.getBytes("UTF-8"),"iso-8859-1");

        file.transferTo(new File(path+newFilename));
        User user = (User)session.getAttribute(userInfo);
        Document doc = new Document();
        doc.setFilename(newFilename);
        doc.setOriginname(filename);
        doc.setPath("/images/");
        user.setAvatar(doc);

        return "redirect:/userinfo";
    }


}
