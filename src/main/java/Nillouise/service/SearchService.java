package Nillouise.service;

import Nillouise.model.FloorDisplay;
import Nillouise.model.Tiezi;

import java.util.List;


public interface SearchService
{
    List<FloorDisplay> searchByKeyword(String keyword);
    List<FloorDisplay> searchByUsername(String username);

}
