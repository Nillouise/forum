package Nillouise.dao;

import Nillouise.model.User;
import org.apache.ibatis.annotations.Select;


public interface UserDao
{
    @Select("SELECT * FROM user_inf WHERE id = #{id}")
    User selectUser(int id);

}
