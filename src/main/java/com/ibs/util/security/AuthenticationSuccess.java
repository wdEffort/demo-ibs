package com.ibs.util.security;

import com.ibs.dashboard.user.dto.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AbstractAuthenticationTargetUrlRequestHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationSuccess extends AbstractAuthenticationTargetUrlRequestHandler implements AuthenticationSuccessHandler {

    /**
     * 성공적으로 인증 처리가 되었을 떄 동작
     * @param request
     * @param response
     * @param authentication 인증된 회원 정보 객체를 가지고 있음
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        UserDetail userDetail = (UserDetail) authentication.getPrincipal();
        User user = userDetail.getUser();
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);

        getRedirectStrategy().sendRedirect(request, response, "/");
    }
}
