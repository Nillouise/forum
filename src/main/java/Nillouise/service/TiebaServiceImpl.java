package Nillouise.service;

import Nillouise.dao.TiebaMapper;
import Nillouise.model.Tieba;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by win7x64 on 2017/9/17.
 */
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
}
