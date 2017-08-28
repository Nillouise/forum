package Nillouise.Mybatis;

import Nillouise.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.SocketHandler;

/**
 * Created by win7x64 on 2017/8/28.
 */
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

}
