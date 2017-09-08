package Nillouise.model;

//这东西用在展示搜索出来的结果身上。

public class FloorDisplay
{
    private Floor floor;
    private Tiezi tiezi;
    private String keyword;
    private String username;
    public FloorDisplay(Floor floor, Tiezi tiezi, String keyword, String username)
    {
        this.floor = floor;
        this.tiezi = tiezi;
        this.keyword = keyword;
        this.username = username;
    }

    public Floor getFloor()
    {
        return floor;
    }

    public void setFloor(Floor floor)
    {
        this.floor = floor;
    }

    public Tiezi getTiezi()
    {
        return tiezi;
    }

    public void setTiezi(Tiezi tiezi)
    {
        this.tiezi = tiezi;
    }

    public String getKeyword()
    {
        return keyword;
    }

    public void setKeyword(String keyword)
    {
        this.keyword = keyword;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }
}
