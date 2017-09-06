package Nillouise.service;

import Nillouise.dao.TieziMapper;
import Nillouise.model.Tiezi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win7x64 on 2017/9/7.
 */
@Service
public class SearchServiceImpl implements SearchService
{
    @Autowired
    TieziMapper tieziMapper;

    public List<Tiezi> searchByKeyword(String keyword)
    {
        return tieziMapper.searchtiezi(keyword);
    }

    public List<Tiezi> searchByUsername(String username)
    {
        return null;
    }
}
