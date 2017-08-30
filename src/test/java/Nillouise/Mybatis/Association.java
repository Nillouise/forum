package Nillouise.Mybatis;

import Nillouise.dao.DocumentMapper;
import Nillouise.dao.FloorMapper;
import Nillouise.dao.TieziMapper;
import Nillouise.dao.UserMapper;
import Nillouise.model.Document;
import Nillouise.model.Floor;
import Nillouise.model.Tiezi;
import Nillouise.model.User;
import org.apache.ibatis.io.Resources;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.ibatis.jdbc.ScriptRunner;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;
import org.springframework.web.servlet.i18n.FixedLocaleResolver;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;


public class Association
{
    @Before
    public void runsql() throws ClassNotFoundException, SQLException
    {

        String aSQLScriptFilePath = "initsql.sql";

        // Create MySql Connection
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/forum?characterEncoding=UTF-8&serverTimezone=UTC", "root", "admin");
        Statement stmt = null;

        try {
            // Initialize object for ScripRunner
            ScriptRunner sr = new ScriptRunner(con);

            // Give the input file to Reader
//            Reader reader = new BufferedReader(
//                    new FileReader(aSQLScriptFilePath));
//这里一定要加/ 变成/initsql.sql才能加载文件
            Reader reader = new BufferedReader(
                    new InputStreamReader(getClass().getResourceAsStream("/initsql.sql"))
            );
            // Exctute script
            sr.runScript(reader);

        } catch (Exception e) {
            System.err.println("Failed to Execute" + aSQLScriptFilePath
                    + " The error is " + e.getMessage());
        }
    }



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

    @Test
    public void testMapper() throws IOException
    {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();


        DocumentMapper documentMapper = session.getMapper(DocumentMapper.class);
        FloorMapper floorMapper = session.getMapper(FloorMapper.class);
        TieziMapper tieziMapper = session.getMapper(TieziMapper.class);
        UserMapper userDao = session.getMapper(UserMapper.class);

        User user = new User();
        user.setUsername("test144");
        user.setPassword("test144");
        int cnt = userDao.addUser(user);
        System.out.println("user id:"+user.getId());
        user.setPassword("changepassword");
        userDao.updateUser(user);
        List<User> users = userDao.getAllUsers();

        Tiezi tiezi = new Tiezi();
        tiezi.setContent("tiezi content junit");
        tiezi.setTitle("tiezi title junit");
        tiezi.setUserid(user.getId());
        tieziMapper.addtiezi(tiezi);

        Floor floor = new Floor();
        floor.setUserid(user.getId());
        floor.setContent("floor content junit");
        floor.setTieziid(tiezi.getId());
        floorMapper.addFloor(floor);

        List<Floor> floors = floorMapper.getFloors(tiezi.getId());


        session.commit();
        session.close();
    }

}
