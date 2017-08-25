package Nillouise.service;

import Nillouise.model.Floor;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TieziService
{
    public static List<Tiezi> tieziList = new ArrayList<Tiezi>();

    public static List<Floor> floorList = new ArrayList<Floor>();


    public boolean addThread(User user,Tiezi tiezi)
    {
        tiezi.setUserid(user.getId());
        tiezi.setId(tieziList.size());
        tieziList.add(tiezi);
        return true;
    }

    public boolean addFloor(User user,int Tieziid, Floor floor)
    {

        for (Tiezi tiezi : tieziList)
        {
            if(tiezi.getId()==Tieziid)
            {
                List<Floor> floors = tiezi.getFloors();
                floor.setTieziid(Tieziid);
                floor.setId(floorList.size());
                floor.setUserid(user.getId());
                floors.add(floor);
                floorList.add(floor);
                tiezi.setFloors(floors);
            }
        }
        return true;
    }
    public List<Tiezi> getTieziAll()
    {
        return tieziList;
    }

    public List<Floor> getFloors(int Tieziid)
    {
        for (Tiezi tiezi : tieziList)
        {
            if(tiezi.getId()==Tieziid)
            {
                List<Floor> floors = tiezi.getFloors();
                return floors;
            }
        }
        return new ArrayList<Floor>();
    }

    public Tiezi getTiezi(int Tieziid)
    {
        for (Tiezi tiezi : tieziList)
        {
            if(tiezi.getId()==Tieziid)
            {

                return tiezi;
            }
        }
        return null;
    }

    public Floor getFloor(int Floorid)
    {
        for (Floor f:floorList)
        {
            if(f.getId()==Floorid)
            {
                return f;
            }
        }
        return null;
    }

}
