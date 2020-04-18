package com.ibs.util.security;


import com.ibs.dashboard.user.dto.User;
import com.ibs.dashboard.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.Collection;

public class MemberService implements UserDetailsService {

    @Autowired
    private UserService userServiceImpl;


    @Override
    public UserDetails loadUserByUsername(String lgnId) throws UsernameNotFoundException {
        try {
            User user = userServiceImpl.selectOneUser(lgnId);

            if (user == null) {
                throw new UsernameNotFoundException("가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
            }

            Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();

            roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));

            UserDetails userDetails = new org.springframework.security.core.userdetails.User(user.getMbId(), user.getMbPw(), roles);

            return userDetails;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
