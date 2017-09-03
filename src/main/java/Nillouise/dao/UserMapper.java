package Nillouise.dao;

import Nillouise.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface UserMapper
{

    User selectUser(int id);

//    似乎这里不能自动解释，一定要加param注解，mybatis才能处理两个参数（单个参数好像不用这样）
    User findUser(@Param("username")String username, @Param("password")String password);

    List<User> getAllUsers();

    int updateUser(User user);

    int addUser(User user);

}
