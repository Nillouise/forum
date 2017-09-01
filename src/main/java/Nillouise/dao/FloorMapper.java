package Nillouise.dao;

import Nillouise.model.Floor;

import java.util.List;

/**
 * Created by win7x64 on 2017/8/30.
 */
public interface FloorMapper
{
    List<Floor> getFloors(int tieziid);
    int addFloor(Floor floor);
    int updateFloor(Floor floor);
    Floor selectFloor(int floorid);
}
