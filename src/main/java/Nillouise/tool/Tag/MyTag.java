package Nillouise.tool.Tag;
//自定义jstl标签通过response对象输出自己的内容，当然也通过函数接受jsp页面哪里传过来的数据
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import java.io.IOException;
import java.text.DecimalFormat;

/**
 * Created by win7x64 on 2017/9/24.
 */
public class MyTag extends javax.servlet.jsp.tagext.SimpleTagSupport
{
    private String format;
    private String number;

    public void setFormat(String format) {
        this.format = format;
    }

    public void setNumber(String number) {
        this.number = number;
    }


    @Override
    public void doTag() throws JspException, IOException
    {

        System.out.println("Number is:" + number);
        System.out.println("Format is:" + format);
        try {
            double amount = Double.parseDouble(number);
            DecimalFormat formatter = new DecimalFormat(format);
            String formattedNumber = formatter.format(amount);
            //输出到外面
            getJspContext().getOut().write(formattedNumber+"my tag");
        } catch (Exception e) {
            e.printStackTrace();
            // stop page from loading further by throwing SkipPageException
            throw new SkipPageException("Exception in formatting " + number
                    + " with format " + format);
        }

    }
}
