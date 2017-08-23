package Nillouise.model;

import java.util.List;

/**
 * Created by win7x64 on 2017/8/23.
 */
public class Floor
{
    private int id;
    private String content;
    private int userid;
    private int threadid;

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

    public int getThreadid()
    {
        return threadid;
    }

    public void setThreadid(int threadid)
    {
        this.threadid = threadid;
    }
}
