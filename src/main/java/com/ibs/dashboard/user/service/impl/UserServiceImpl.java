package com.ibs.dashboard.user.service.impl;

import com.ibs.dashboard.user.dao.UserDAO;
import com.ibs.dashboard.user.dto.User;
import com.ibs.dashboard.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final static Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserDAO userDAO;

    @Override
    public void createOneUser(User user) throws Exception {
        LOGGER.info("사용자가 회원가입 하기 위해 입력한 값들을 확인합니다.");

        userDAO.createOneUser(user);
    }

    @Override
    public User selectOneUser(String mbId) throws Exception {
        LOGGER.info("사용자가 입력한 ID를 확인합니다.");

        return userDAO.selectOneUser(mbId);
    }
}
