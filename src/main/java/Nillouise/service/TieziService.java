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

    public boolean addThread(User user,Tiezi tiezi)
    {
        tiezi.setUserid(user.getId());
        tiezi.setId(tieziList.size());
        tieziList.add(tiezi);
        return true;
    }

    public boolean addFloor(User user,int Threadid, Floor floor)
    {
        for (Tiezi tiezi : tieziList)
        {
            if(tiezi.getId()==Threadid)
            {
                List<Floor> floors = tiezi.getFloors();
                floors.add(floor);
                tiezi.setFloors(floors);
            }
        }
        return true;
    }
    public List<Tiezi> getTieziAll()
    {
        return tieziList;
    }

    public List<Floor> getFloors(int Threadid)
    {
        for (Tiezi tiezi : tieziList)
        {
            if(tiezi.getId()==Threadid)
            {
                List<Floor> floors = tiezi.getFloors();
                return floors;
            }
        }
        return new ArrayList<Floor>();
    }
}
