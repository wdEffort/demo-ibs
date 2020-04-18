package com.ibs.dashboard.user.dto;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class User {

    private Integer mbIdx;

    private String mbId;

    private String mbPw;

    private String mbName;

    private String mbPhone;

    private String mbEmail;

    private Integer mbStatus;

    private UserRole userRole;

    private LocalDateTime mbFrstDatetime;

    private LocalDateTime mbModfDatetime;

}
