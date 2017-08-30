package Nillouise.Mybatis;

import Nillouise.dao.TieziMapper;
import Nillouise.dao.UserMapper;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;


public class Association
{
    @Test
    public void test1() throws IOException
    {
        String resource = "mybatis-config.xml";
//        String resource = "/resources/mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        try {
            User user = session.selectOne(
                    "Nillouise.model.UserMapper.selectUser", 1);
            System.out.println(user);

        } finally {
            session.close();
        }
    }

    @Test
    public void userdao() throws Exception
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        UserMapper userDao = session.getMapper(UserMapper.class);

        User user = userDao.selectUser(1);
        System.out.println(user);
    }

    @Test
    public void tieziDao() throws Exception
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        TieziMapper userDao = session.getMapper(TieziMapper.class);

        Tiezi tiezi = userDao.selecttiezi(1);

        Thread.sleep(3000);

        tiezi.getFloors();
//        System.out.println(tiezi);
        session.close();
    }

    @Test
    public void findUser() throws Exception
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        UserMapper userDao = session.getMapper(UserMapper.class);
//
//        User user1 = userDao.selectUser(1);

        User user = userDao.findUser("test1","test1");


//        tiezi.getFloors();
//        System.out.println(tiezi);
        session.close();
    }

    @Test
    public void getAlluser() throws Exception
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        UserMapper userDao = session.getMapper(UserMapper.class);
//
//        User user1 = userDao.selectUser(1);

        List<User> user = userDao.getAllUsers();


//        tiezi.getFloors();
//        System.out.println(tiezi);
        session.close();
    }

    @Test
    public void adduser() throws IOException
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        UserMapper userDao = session.getMapper(UserMapper.class);

        User user = new User();
        user.setUsername("test112");
        user.setPassword("test112");
        int cnt = userDao.addUser(user);
        session.commit();
        session.close();

    }

}
