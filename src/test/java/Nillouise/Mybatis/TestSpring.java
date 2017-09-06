package Nillouise.Mybatis;

import Nillouise.model.Tiezi;
import Nillouise.service.SearchService;
import Nillouise.service.TieziService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

/**
 * Created by win7x64 on 2017/9/7.
 */
//不知道为什么这个forum要加这句webAppConfiguration，而mindanchor不用加
@WebAppConfiguration
//指定bean注入的配置文件
@ContextConfiguration(locations = { "file:web/WEB-INF/dispatcher-servlet.xml" })
//使用标准的JUnit @RunWith注释来告诉JUnit使用Spring TestRunner
@RunWith(SpringJUnit4ClassRunner.class)
public class TestSpring
{
    @Autowired
    SearchService searchService;

    @Test
    public void name() throws Exception
    {
        List<Tiezi> fdf = searchService.searchByKeyword("fdf");
        System.out.println(fdf);
    }
}
