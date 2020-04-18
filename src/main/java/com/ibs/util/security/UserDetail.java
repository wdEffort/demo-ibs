package com.ibs.util.security;

import com.ibs.dashboard.user.dto.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UserDetail implements UserDetails {

    private static final long serialVersionUID = 382470695301303764L;

    private List<GrantedAuthority> authorities;

    private User user;

    public UserDetail(User user) {
        this.user = user;
        authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_" + user.getUserRole().getMrRole()));
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String getPassword() {
        return this.user.getMbPw();
    }

    @Override
    public String getUsername() {
        return this.user.getMbName();
    }

    /**
     * 만료 여부
     * @return
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return user.getMbStatus() == 1;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * 회원 정보 사용 가능여부
     * @return
     */
    @Override
    public boolean isEnabled() {
        return user.getMbStatus() == 1;
    }

    @Override
    public int hashCode() {
        return user.getMbIdx();
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof UserDetail)) {
            return false;
        }

        UserDetail userDetail = (UserDetail) o;

        if (this.user.getMbId() == null && userDetail.getUser().getMbId() != null) {
            return false;
        }

        if (this.user.getMbId() != null && userDetail.getUser().getMbId() == null) {
            return false;
        }

        return true;
    }
}
