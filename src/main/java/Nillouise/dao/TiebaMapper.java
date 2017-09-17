package Nillouise.dao;

import Nillouise.model.Tieba;

/**
 * Created by win7x64 on 2017/9/17.
 */
public interface TiebaMapper
{
    Tieba selectTieba(String tiebaname);
    int createTieba(String tiebaname);
}
