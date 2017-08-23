package Nillouise.model;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;


public class User
{
    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public Date getLoginedtime()
    {
        return loginedtime;
    }

    public void setLoginedtime(Date loginedtime)
    {
        this.loginedtime = loginedtime;
    }

    private int id;
    //只要在这里加了这么一句，就会自动调用对应的formmatter，都不需要在xml里特别注解，也不需要导入特别的包
    @DateTimeFormat(pattern = "yy-MM-dd")
    private Date loginedtime;
    @Length(min = 4,max = 10,message = "usernamelength error")
    private String username="";
    @Length(min = 4,max = 10,message = "password length error")
    private String password="";
}
