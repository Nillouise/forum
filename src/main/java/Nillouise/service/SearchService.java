package Nillouise.service;

import Nillouise.model.Tiezi;

import java.util.List;


public interface SearchService
{
    List<Tiezi> searchByKeyword(String keyword);
    List<Tiezi> searchByUsername(String username);

}
