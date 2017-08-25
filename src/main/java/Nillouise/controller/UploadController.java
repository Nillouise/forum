package Nillouise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;


@RequestMapping("/upload")
@Controller
public class UploadController
{
    @RequestMapping("/avatar.do")
    public String avatar(HttpServletRequest request, @RequestParam("file")MultipartFile file)
    {
        String path = request.getServletContext().getRealPath("/images/");

    }
}
