package Nillouise.dao;

import Nillouise.model.Tiezi;

import java.util.List;

/**
 * Created by win7x64 on 2017/8/29.
 */
public interface TieziMapper
{
    Tiezi selecttiezi(int id);

    int addtiezi(Tiezi tiezi);

    List<Tiezi> getAlltiezi();

}
