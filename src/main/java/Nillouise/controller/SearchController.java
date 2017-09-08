package Nillouise.controller;


import Nillouise.service.SearchService;
import Nillouise.tool.RequestString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController
{
    @Autowired
    private SearchService searchService;

    @RequestMapping("searchbykeyword.do")
    public String keyword(String keyword, Model model)
    {
        model.addAttribute(RequestString.searchresult,searchService.searchByKeyword(keyword));
        return "WEB-INF/showresult.jsp";
    }
    @RequestMapping("searchbyusername.do")
    public String user(String username, Model model)
    {
        model.addAttribute(RequestString.searchresult,searchService.searchByUsername(username));
        return "WEB-INF/showresult.jsp";
    }
}
