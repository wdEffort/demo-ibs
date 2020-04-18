package com.ibs.dashboard.user.service;

import com.ibs.dashboard.user.dto.User;

public interface UserService {
    public void createOneUser(User user) throws Exception;

    public User selectOneUser(String mbId) throws Exception;
}
