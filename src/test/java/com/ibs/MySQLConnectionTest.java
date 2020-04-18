package com.ibs;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/context-datasource.xml"})
public class MySQLConnectionTest {

    @Autowired
    private DataSource dataSource;

    @Test
    public void mySQLConnectionTest() throws Exception {
        try (Connection conn = dataSource.getConnection()) {
            System.out.println("MySQL Connection Success!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
