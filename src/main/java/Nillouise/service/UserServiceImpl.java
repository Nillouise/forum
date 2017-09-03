package Nillouise.service;

import Nillouise.dao.UserMapper;
import Nillouise.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win7x64 on 2017/8/31.
 */
@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    private UserMapper userMapper;

    public boolean addUser(User user)
    {
        return userMapper.addUser(user)>0;
    }

    public User checkUser(String username, String password)
    {
        return userMapper.findUser(username,password);
    }

    public boolean updateUser(User user)
    {
        return userMapper.updateUser(user)>0;
    }
}
