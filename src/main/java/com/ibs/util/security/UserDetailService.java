package com.ibs.util.security;

import com.ibs.dashboard.user.dto.User;
import com.ibs.dashboard.user.service.impl.UserServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserDetailService implements UserDetailsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserDetailService.class);

    @Autowired
    private UserServiceImpl userServiceImpl;

    /**
     * 로그인 인증 처리
     *
     * @param lgnId 사용자가 입력한 ID
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String lgnId) throws UsernameNotFoundException {
        LOGGER.info("SECURITY 시작!");
        User user = null;

        try {
            LOGGER.debug("SECURITY 인증 시작, 사용자로부터 입력된 ID => " + lgnId);

            user = userServiceImpl.selectOneUser(lgnId);

            if (user == null) {
                LOGGER.info("등록된 회원정보를 찾지 못하였습니다.");
                throw new BadCredentialsException("가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
            }

        } catch (DataAccessException dae) {
            LOGGER.debug("[ERROR] " + dae);
            throw new DataAccessException("ERROR") {
                private static final long serialVersionUID = -7805126431472262702L;
            };
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new UserDetail(user);
    }
}
