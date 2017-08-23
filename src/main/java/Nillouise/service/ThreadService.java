package Nillouise.service;

import Nillouise.model.Floor;
import Nillouise.model.Thread;
import Nillouise.model.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win7x64 on 2017/8/23.
 */
public class ThreadService
{
    public static List<Thread> threadList = new ArrayList<Thread>();

    public boolean addThread(User user,Thread thread)
    {
        thread.setUserid(user.getId());
        thread.setId(threadList.size());
        threadList.add(thread);
        return true;
    }

    public boolean addFloor(User user,int Threadid, Floor floor)
    {
        for (Thread thread:threadList)
        {
            if(thread.getId()==Threadid)
            {
                List<Floor> floors = thread.getFloors();
                floors.add(floor);
                thread.setFloors(floors);
            }
        }
        return true;
    }
    public List<Thread> getThreadAll()
    {
        return threadList;
    }

    public List<Floor> getFloors(int Threadid)
    {
        for (Thread thread:threadList)
        {
            if(thread.getId()==Threadid)
            {
                List<Floor> floors = thread.getFloors();
                return floors;
            }
        }
        return new ArrayList<Floor>();
    }
}
