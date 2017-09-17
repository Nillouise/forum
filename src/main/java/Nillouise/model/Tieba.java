package Nillouise.model;

import java.util.Date;

/**
 * Created by win7x64 on 2017/9/17.
 */
public class Tieba
{
    int id;
    String tiebaname;
    Date createtime;

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getTiebaname()
    {
        return tiebaname;
    }

    public void setTiebaname(String tiebaname)
    {
        this.tiebaname = tiebaname;
    }

    public Date getCreatetime()
    {
        return createtime;
    }

    public void setCreatetime(Date createtime)
    {
        this.createtime = createtime;
    }
}
