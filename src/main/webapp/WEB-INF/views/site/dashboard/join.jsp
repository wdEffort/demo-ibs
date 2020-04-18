<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- Outer Row -->
<div class="card o-hidden border-0 shadow-lg my-5">
    <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
            <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
            <div class="col-lg-7">
                <div class="p-5">
                    <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
                    </div>
                    <form class="user" method="post" action="${_ctx}/join.do">
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" name="mb_id" id="mb_id"
                                   placeholder="아이디 입력">
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="password" class="form-control form-control-user" name="mb_pw" id="mb_pw"
                                       placeholder="비밀번호 입력">
                            </div>
                            <div class="col-sm-6">
                                <input type="password" class="form-control form-control-user" name="mb_pw_rc"
                                       id="mb_pw_rc" placeholder="비밀번호 재확인">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" name="mb_nm" id="mb_nm"
                                   placeholder="이름 입력">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" name="mb_pn" id="mb_pn"
                                   placeholder="연락처 입력">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control form-control-user" name="mb_em" id="mb_em"
                                   placeholder="E-mail 입력">
                        </div>
                        <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입"/>
                    </form>
                    <hr>
                    <div class="text-center">
                        <a class="small" href="${_ctx}/user/forgotPassword.do">비밀번호 찾기</a>
                    </div>
                    <div class="text-center">
                        <a class="small" href="${_ctx}/user/login.do">로그인 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>