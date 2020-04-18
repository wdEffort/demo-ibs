package com.ibs.dashboard.user.controller;

import com.ibs.dashboard.user.dto.User;
import com.ibs.dashboard.user.service.impl.UserServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {

    private final static Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserServiceImpl userServiceImpl;

    @GetMapping("/login.do")
    public String getUserLoginPage(@RequestParam(value = "error", required = false) String error, Model model) {
        LOGGER.info("사용자 로그인 페이지 접속");

        if (error != null) {
            model.addAttribute("error", "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
        }

        return "user/login";
    }

    @PostMapping("/login.do")
    public String getUserLogin(@ModelAttribute User user) {
        LOGGER.info("사용자 로그인 시도");

        return null;
    }

    @GetMapping("/join.do")
    public String getUserJoinPage() {
        LOGGER.info("사용자 회원가입 페이지 접속");

        return "user/join";
    }

    @PostMapping("/join.do")
    public String getUserJoin(@ModelAttribute User user) throws Exception {
        LOGGER.info("사용자 회원가입 시도");

        userServiceImpl.createOneUser(user);

        return null;
    }

    @GetMapping("/forgotPassword.do")
    public String getUserForgetPasswordPage() {
        LOGGER.info("사용자 비밀번호찾기 페이지 접속");

        return "user/forgotPassword";
    }

    @PostMapping("/forgotPassword.do")
    public String getUserForgetPassword() {
        LOGGER.info("사용자 비밀번호찾기 시도");

        return null;
    }

    @GetMapping("/logout.do")
    public String getUserLogout() {
        LOGGER.info("사용자 로그아웃 시도");

        return null;
    }
}
