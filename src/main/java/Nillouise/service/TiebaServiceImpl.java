package Nillouise.service;

import Nillouise.dao.TiebaMapper;
import Nillouise.model.Tieba;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TiebaServiceImpl implements TiebaService
{
    @Autowired
    TiebaMapper tiebaMapper;


    @Override
    public Tieba getTieba(String tiebaname)
    {
        return tiebaMapper.selectTieba(tiebaname);
    }

    @Override
    public boolean createTieba(String tiebaname)
    {
        return tiebaMapper.createTieba(tiebaname)>0;
    }

    @Override
    public List<Tieba> getAllTieba()
    {
        return tiebaMapper.getALL();
    }
}
