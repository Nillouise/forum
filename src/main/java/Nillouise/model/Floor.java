package Nillouise.model;

/**
 * Created by win7x64 on 2017/8/23.
 */
public class Floor
{
    private int id;
    private String content="";
    private int userid=-1;
    private int tieziid;

    private int zan=0;
    private int cai=0;
    private User user;

    private Tiezi tiezi;

    public Tiezi getTiezi()
    {
        return tiezi;
    }

    public void setTiezi(Tiezi tiezi)
    {
        this.tiezi = tiezi;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }


    public int getZan()
    {
        return zan;
    }

    public void setZan(int zan)
    {
        this.zan = zan;
    }

    public int getCai()
    {
        return cai;
    }

    public void setCai(int cai)
    {
        this.cai = cai;
    }

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
