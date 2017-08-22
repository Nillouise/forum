package Nillouise.service;

import Nillouise.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by win7x64 on 2017/8/23.
 */
@Service
public class RegistService
{
    static List<User> userList = new ArrayList<User>();

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
