package com.ibs;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/context-datasource.xml", "classpath:spring/context-root.xml"})
public class MyBatisTest {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Test
    public void sqlSessionFactoryTest() throws Exception {
        System.out.println("SqlSessionFactory Injection Success!\nInfo : " + sqlSessionFactory);
    }

    @Test
    public void MyBatisTest() throws Exception {
        try (SqlSession session = sqlSessionFactory.openSession()) {
            System.out.println("Open SqlSession Success!\nInfo : " + session);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
