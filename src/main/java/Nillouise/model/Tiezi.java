package Nillouise.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win7x64 on 2017/8/23.
 */
public class Tiezi
{
    private int id;
    private String title="";
    private String content="";
    private int userid;
    private List<Floor> floors=new ArrayList<Floor>();

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
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

    public List<Floor> getFloors()
    {
        return floors;
    }

    public void setFloors(List<Floor> floors)
    {
        this.floors = floors;
    }
}
