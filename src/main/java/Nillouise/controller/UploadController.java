package Nillouise.controller;

import Nillouise.dao.DocumentMapper;
import Nillouise.model.Document;
import Nillouise.model.User;
import Nillouise.service.DocumentService;
import Nillouise.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.util.Date;

import static Nillouise.tool.RequestString.userInfo;


@RequestMapping("/upload")
@Controller
public class UploadController
{
    @Autowired
    DocumentService documentService;
    @Autowired
    UserService userService;


    @RequestMapping("/avatar.do")
    public String avatar(HttpSession session,HttpServletRequest request, @RequestParam("file")MultipartFile file) throws IOException
    {
        if(file.isEmpty())
        {
            return "error.html";
        }

        String path = request.getServletContext().getRealPath("/images/avatars/");

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
        doc.setSavename(newFilename);
        doc.setOriginname(filename);
        doc.setUserid(user.getId());
        doc.setPath("/images/avatars/");
        documentService.addDocument(doc);
        user.setAvatar(doc);
        user.setAvatarid(doc.getId());
        userService.updateUser(user);

        return "redirect:/userinfo";
    }


}
