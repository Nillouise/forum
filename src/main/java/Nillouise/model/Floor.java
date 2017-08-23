package Nillouise.model;

/**
 * Created by win7x64 on 2017/8/23.
 */
public class Floor
{
    private int id;
    private String content="";
    private int userid;
    private int tieziid;

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    public int getUserid()
    {
        return userid;
    }

    public void setUserid(int userid)
    {
        this.userid = userid;
    }

    public int getTieziid()
    {
        return tieziid;
    }

    public void setTieziid(int tieziid)
    {
        this.tieziid = tieziid;
    }
}
