package Nillouise.service;

import Nillouise.dao.FloorMapper;
import Nillouise.dao.TieziMapper;
import Nillouise.model.Floor;
import Nillouise.model.FloorDisplay;
import Nillouise.model.Tiezi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.i18n.FixedLocaleResolver;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win7x64 on 2017/9/7.
 */
@Service
public class SearchServiceImpl implements SearchService
{
    @Autowired
    TieziMapper tieziMapper;
    @Autowired
    FloorMapper floorMapper;

    public List<FloorDisplay> searchByKeyword(String keyword)
    {
        String escapeString = "%"+keyword+"%";
        List<Tiezi> tiezis = tieziMapper.searchtiezi(escapeString);
        List<Floor> floors = floorMapper.searchfloor(escapeString);
        List<FloorDisplay> floorDisplays = new ArrayList<FloorDisplay>();
        for (Tiezi tiezi : tiezis)
        {
            floorDisplays.add(new FloorDisplay(tiezi,null,keyword));
        }
        for (Floor floor : floors)
        {
            floorDisplays.add(new FloorDisplay(null,floor,keyword));
        }
        return floorDisplays;
    }

    public List<FloorDisplay> searchByUsername(String username)
    {
        List<FloorDisplay> floorDisplays = new ArrayList<FloorDisplay>();
        List<Tiezi> tiezis = tieziMapper.searchByUsername(username);
        List<Floor> floors = floorMapper.searchByUsername(username);
        for (Tiezi tiezi : tiezis)
        {
            floorDisplays.add(new FloorDisplay(tiezi,null,""));
        }
        for (Floor floor : floors)
        {
            floorDisplays.add(new FloorDisplay(null,floor,""));
        }
        return floorDisplays;
    }
}
