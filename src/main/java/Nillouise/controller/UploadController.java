package Nillouise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;


@RequestMapping("/upload")
@Controller
public class UploadController
{
    @RequestMapping("/avatar.do")
    public String avatar(HttpServletRequest request, @RequestParam("file")MultipartFile file) throws IOException
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
        file.transferTo(new File(path+File.pathSeparator+filename));
        return "redirect:/userinfo";
    }


}
