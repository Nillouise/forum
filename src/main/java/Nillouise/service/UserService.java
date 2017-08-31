package Nillouise.service;

import Nillouise.dao.UserMapper;
import Nillouise.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win7x64 on 2017/8/31.
 */
public interface UserService
{
    boolean addUser(User user);
    User checkUser(String username,String password);


}
