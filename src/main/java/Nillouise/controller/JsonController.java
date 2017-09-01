package Nillouise.controller;

import Nillouise.model.Floor;
import Nillouise.service.TieziService;
import Nillouise.service.TieziServiceOld;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;




@Controller
@RequestMapping("/json")
public class JsonController
{
    Logger LOGGER = LoggerFactory.getLogger(JsonController.class);


    @Autowired
    TieziServiceOld tieziServiceOld;

    @Autowired
    TieziService tieziService;

    @RequestMapping(value = "/dianzan.do",method = RequestMethod.POST)
    public void dianzan(@RequestBody receivejson floorid, HttpServletResponse response) throws IOException
    {
//        Integer floorid = json.floorid;
        Floor floor = tieziService.selectFloor(floorid.getFloorid());
        if(floor==null)
        {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("0");
        }

        floor.setZan(floor.getZan()+1);
        tieziService.updateFloor(floor);
        ObjectMapper mapper = new ObjectMapper();

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println(mapper.writeValueAsString(floor.getZan()));
//        response.getWriter().println("100");
    }

    @RequestMapping(value = "/diancai.do",method = RequestMethod.POST)
    public void diancai(@RequestBody receivejson floorid, HttpServletResponse response) throws IOException
    {
//      Integer floorid = json.floorid;

        Floor floor = tieziService.selectFloor(floorid.getFloorid());
        if(floor==null)
        {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("0");
        }
        floor.setCai(floor.getCai()+1);
        tieziService.updateFloor(floor);
        ObjectMapper mapper = new ObjectMapper();

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println(mapper.writeValueAsString(floor.getCai()));
//        response.getWriter().println("100");
    }

}
class receivejson
{
    Integer floorid;

    public Integer getFloorid()
    {
        return floorid;
    }

    public void setFloorid(Integer floorid)
    {
        this.floorid = floorid;
    }
}