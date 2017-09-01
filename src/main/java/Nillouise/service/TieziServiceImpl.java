package Nillouise.service;

import Nillouise.dao.FloorMapper;
import Nillouise.dao.TieziMapper;
import Nillouise.model.Floor;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TieziServiceImpl implements TieziService
{
    @Autowired
    FloorMapper floorMapper;
    @Autowired
    TieziMapper tieziMapper;

    public boolean addThread(User user, Tiezi tiezi)
    {
        tiezi.setUserid(user.getId());
        return tieziMapper.addtiezi(tiezi) > 0;
    }

    public boolean addFloor(User user, int Tieziid, Floor floor)
    {
        floor.setUserid(user.getId());
        floor.setTieziid(Tieziid);
        return floorMapper.addFloor(floor)>0;
    }

    public List<Tiezi> getTieziAll()
    {
        return tieziMapper.getAlltiezi();
    }

    public List<Floor> getFloors(int Tieziid)
    {
        return floorMapper.getFloors(Tieziid);

    }

    public Tiezi getTiezi(int Tieziid)
    {
        return tieziMapper.selecttiezi(Tieziid);
    }

    public boolean updateFloor(Floor floor)
    {
        return floorMapper.updateFloor(floor) > 0;
    }

    public Floor selectFloor(int floorid)
    {
        return floorMapper.selectFloor(floorid);
    }
}
