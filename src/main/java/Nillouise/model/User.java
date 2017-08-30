package Nillouise.model;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;


public class User
{
    private int id;
    //只要在这里加了这么一句，spring就会自动调用对应的formmatter，都不需要在xml里特别注解，也不需要导入特别的包
    @DateTimeFormat(pattern = "yy-MM-dd")
    private Date loginedtime;
    @Length(min = 4,max = 10,message = "usernamelength error")
    private String username="";
    @Length(min = 4,max = 10,message = "password length error")
    private String password="";

    private int avatarid=1;
    private Document avatar;

    public boolean copyFrom(User source)
    {
        id=source.id;
        username=source.username;
        password=source.password;
        loginedtime=source.loginedtime;
        return true;
    }
    public int getAvatarid()
    {
        return avatarid;
    }

    public void setAvatarid(int avatarid)
    {
        this.avatarid = avatarid;
    }

    public Document getAvatar()
    {
        return avatar;
    }

    public void setAvatar(Document avatar)
    {
        this.avatar = avatar;
    }

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

}
