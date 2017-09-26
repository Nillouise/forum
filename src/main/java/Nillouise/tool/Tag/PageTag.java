package Nillouise.tool.Tag;

import Nillouise.model.PageModel;

import javax.servlet.jsp.JspException;
import java.io.IOException;


public class PageTag extends javax.servlet.jsp.tagext.SimpleTagSupport
{
    String submitUrl;
    PageModel pageModel;

    public void setSubmitUrl(String submitUrl)
    {
        this.submitUrl = submitUrl;
    }

    public void setPageModel(PageModel pageModel)
    {
        this.pageModel = pageModel;
    }

    @Override
    public void doTag() throws JspException, IOException
    {
        for (int i=1;i<=pageModel.getMaxPageNumber();i++)
        {
            String curUrl = submitUrl.replace("{0}",String.valueOf(i));
            if(i!=pageModel.getCurPage())
            {
                //输出到外面
                getJspContext().getOut().write("<span>"+"<a href="+curUrl+">"+String.valueOf(i)+"</a></span>");
            }else{
                getJspContext().getOut().write("<span>"+String.valueOf(i)+"</span>");
            }
        }
    }
}
