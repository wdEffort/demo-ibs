<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Outer Row -->
<div class="row justify-content-center">
    <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
                                <p class="mb-4">아래에 가입할 때 사용한 E-mail 주소를 입력하면 비밀번호를 재설정 할 수 있는 링크가 전송됩니다.</p>
                            </div>
                            <form class="user">
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="mb_email" aria-describedby="emailHelp" placeholder="E-mail 입력">
                                </div>
                                <a href="${_ctx}/" class="btn btn-primary btn-user btn-block">비밀번호 재설정하기</a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="${_ctx}/user/join.do">회원가입</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="${_ctx}/user/login.do">로그인 하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
