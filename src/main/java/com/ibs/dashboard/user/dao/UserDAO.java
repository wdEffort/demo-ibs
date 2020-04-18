package com.ibs.dashboard.user.dao;

import com.ibs.dashboard.user.dto.User;
import com.ibs.util.supports.CommonDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO extends CommonDAO {

    private final static Logger LOGGER = LoggerFactory.getLogger(UserDAO.class);

    public void createOneUser(User user) throws Exception {
        LOGGER.info("사용자가 입력한 회원정보를 등록합니다.");

        getSqlSession().insert("IBSUser.IBSInsertOneUser", user);
        getSqlSession().insert("IBSUserCategory.IBSInsertOneUserCategory", user.getUserRole());
    }

    public User selectOneUser(String mbId) throws Exception {
        LOGGER.info("입력된 ID로 회원 정보를 조회합니다.");

        User user = getSqlSession().selectOne("IBSUser.IBSSelectOneUser", mbId);

        if (user != null) {
            user.setUserRole(getSqlSession().selectOne("IBSUserCategory.IBSSelectOneUserCategory", user.getMbId()));
        }

        return user;
    }
}
