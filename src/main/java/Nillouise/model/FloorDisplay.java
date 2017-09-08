package Nillouise.model;

//这东西用在展示搜索出来的结果身上。

public class FloorDisplay
{
    private Floor floor;
    private Tiezi tiezi;
    private String keyword;

    public FloorDisplay(Tiezi tiezi,Floor floor, String keyword)
    {
        this.floor = floor;
        this.tiezi = tiezi;
        this.keyword = keyword;


        if(this.floor == null)
        {
            try
            {
                this.floor = tiezi.getFloors().get(0);
            }catch (Exception e)
            {
                Floor emptyfloor = new Floor();
                emptyfloor.setContent("");
                emptyfloor.setUser(tiezi.getUser());
                emptyfloor.setUserid(tiezi.getUserid());
                emptyfloor.setTiezi(tiezi);
                emptyfloor.setTieziid(tiezi.getId());
                this.floor = emptyfloor;
                e.printStackTrace();
            }
        }
        if(this.tiezi==null)
        {
            this.tiezi = floor.getTiezi();
        }
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

}
