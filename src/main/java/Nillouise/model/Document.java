package Nillouise.model;


public class Document
{
    String path;
    String savename;
    String originname;
    int id;
    String uses;
    int userid;
    User user;

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }

    public String getUses()
    {
        return uses;
    }

    public void setUses(String uses)
    {
        this.uses = uses;
    }

    public int getUserid()
    {
        return userid;
    }

    public void setUserid(int userid)
    {
        this.userid = userid;
    }

    public String getPath()
    {
        return path;
    }

    public void setPath(String path)
    {
        this.path = path;
    }

    public String getSavename()
    {
        return savename;
    }

    public void setSavename(String savename)
    {
        this.savename = savename;
    }

    public String getOriginname()
    {
        return originname;
    }

    public void setOriginname(String originname)
    {
        this.originname = originname;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
}
