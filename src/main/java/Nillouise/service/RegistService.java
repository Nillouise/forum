package Nillouise.service;

import Nillouise.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class RegistService
{

    public static List<User> userList = new ArrayList<User>();

    Logger LOGGER = LoggerFactory.getLogger(RegistService.class);

    public boolean addUser(User user)
    {
        LOGGER.info("slf4 logging...");

        for (User i :userList)
        {
            if(i.getUsername().equals(user.getUsername()))
            {
                return false;
            }
        }
        user.setId(userList.size());
        userList.add(user);
        return true;
    }
}
