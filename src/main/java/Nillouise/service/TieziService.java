package Nillouise.service;

import Nillouise.model.Floor;
import Nillouise.model.Tieba;
import Nillouise.model.Tiezi;
import Nillouise.model.User;

import java.util.List;


public interface TieziService
{
    boolean addThread(User user, Tiezi tiezi);
    boolean addFloor(User user,int Tieziid, Floor floor);
    List<Tiezi> getTieziAll();
    List<Floor> getFloors(int Tieziid);
    Floor selectFloor(int floorid);
    Tiezi getTiezi(int Tieziid);
    boolean updateFloor(Floor floor);
    List<Tiezi> getTieziByTieba(int tiebaid);
    List<Tiezi> getTieziLimit(int tiebaid,int start,int rows);
    int getTieziCount(int tiebaid);
}
