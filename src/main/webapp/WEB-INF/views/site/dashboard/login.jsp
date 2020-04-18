<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- Outer Row -->
<div class="row justify-content-center">
    <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">로그인 하기</h1>
                            </div>
                            <form class="user" method="post" action="${_ctx}/security/login.do" autocomplete="off">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="lgnId" id="lgnId"
                                           placeholder="아이디 입력">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" name="lgnPw"
                                           id="lgnPw" placeholder="비밀번호 입력">
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox small">
                                        <input type="checkbox" class="custom-control-input" name="rememberMe"
                                               id="rememberMe">
                                        <label class="custom-control-label" for="rememberMe">로그인 상태 유지</label>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="로그인"/>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="${_ctx}/forgotPassword.do">비밀번호 찾기</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="${_ctx}/join.do">회원가입</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
