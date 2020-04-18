package com.ibs.dashboard.user.dao;

import com.ibs.dashboard.user.dto.User;
import com.ibs.dashboard.user.dto.UserRole;
import com.ibs.dashboard.user.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/dispatcher-servlet.xml",
        "classpath:spring/context-datasource.xml",
        "classpath:spring/context-root.xml"
})
@Transactional
public class UserDAOTest {

    private final static Logger LOGGER = LoggerFactory.getLogger(UserDAOTest.class);

    @Autowired
    private UserService userServiceImpl;

    @Test
    @Rollback(true)
    public void createOneUserTest() throws Exception {
        User user = new User();
        user.setMbId("lhw2");
        user.setMbPw("1234");
        user.setMbName("이현우");
        user.setMbPhone("010-3062-0903");
        user.setMbEmail("yoman3011@gmail.com");
        user.setMbStatus(1);
        user.setMbFrstDatetime(LocalDateTime.now());

        UserRole userRole = new UserRole();
        userRole.setMrRole("ADMIN");
        userRole.setMbId("lhw2");

        user.setUserRole(userRole);

        userServiceImpl.createOneUser(user);
    }

    @Test
    public void selectOneUserTest() throws Exception {
        String mbId = "lhw";

        User user = userServiceImpl.selectOneUser(mbId);

        LOGGER.info("SELETED USER INFO => " + user.toString());
    }


}
