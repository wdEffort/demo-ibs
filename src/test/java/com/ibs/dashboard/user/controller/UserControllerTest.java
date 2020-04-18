package com.ibs.dashboard.user.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/dispatcher-servlet.xml",
        "classpath:spring/context-datasource.xml",
        "classpath:spring/context-root.xml"
})
public class UserControllerTest {

    private final static Logger LOGGER = LoggerFactory.getLogger(UserControllerTest.class);

    @Autowired
    private WebApplicationContext webApplicationContext;

    private MockMvc mockMvc;

    @Before
    public void setUp() throws Exception {
        this.mockMvc = MockMvcBuilders.standaloneSetup(webApplicationContext).build();
        LOGGER.info("WAC => " + webApplicationContext);
        LOGGER.info("Mock => " + mockMvc);
    }

    @Test
    public void getLoginPage() throws Exception {
        this.mockMvc.perform(get("/user/login.do"))
                .andDo(print());
    }

}
