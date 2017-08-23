package Nillouise.service;

import Nillouise.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class RegistService
{
    public static List<User> userList = new ArrayList<User>();

    public boolean addUser(User user)
    {
        for (User i :userList)
        {
            if(i.getUsername().equals(user.getUsername()))
            {
                return false;
            }
        }
        userList.add(user);
        return true;
    }
}
