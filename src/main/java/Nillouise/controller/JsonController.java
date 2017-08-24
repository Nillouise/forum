package Nillouise.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by win7x64 on 2017/8/24.
 */
@Controller
@RequestMapping("/json")
public class JsonController
{
    Logger LOGGER = LoggerFactory.getLogger(JsonController.class);

    @RequestMapping(value = "/dianzan",method = RequestMethod.POST)
    public void dianzan(@RequestBody receivejson s, HttpServletResponse response) throws IOException
    {
//        Integer floorid = json.floorid;
        LOGGER.info( "receive json " + s);

//        ObjectMapper mapper = new ObjectMapper();
//
//        response.setContentType("text/html;charset=UTF-8");
//        response.getWriter().println(mapper.writeValueAsString(new Integer(100)));
        response.getWriter().println("100");
    }


}
class receivejson
{
    String floorid;

    public String getFloorid()
    {
        return floorid;
    }

    public void setFloorid(String floorid)
    {
        this.floorid = floorid;
    }
}