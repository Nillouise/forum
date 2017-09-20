package Nillouise.model;

import java.util.ArrayList;
import java.util.List;


public class Tiezi
{
    private int id;
    private String title="";
    private int userid=-1;
    private List<Floor> floors=new ArrayList<Floor>();
    private User user;
    private int tiebaid;

    public int getTiebaid()
    {
        return tiebaid;
    }

    public void setTiebaid(int tiebaid)
    {
        this.tiebaid = tiebaid;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }

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
