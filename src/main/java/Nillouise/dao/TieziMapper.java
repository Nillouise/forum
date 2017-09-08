package Nillouise.dao;

import Nillouise.model.Tiezi;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by win7x64 on 2017/8/29.
 */
public interface TieziMapper
{
    Tiezi selecttiezi(int tieziid);

    int addtiezi(Tiezi tiezi);

    List<Tiezi> getAlltiezi();

    List<Tiezi> searchtiezi(@Param("keyword")String keyword);

    List<Tiezi> searchByUsername(@Param("username")String username);
}
