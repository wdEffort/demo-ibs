<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="치과용임플란트 등 기타 의료용 기기 제조업체">
    <meta name="keywords" content="(주)이노바이오써지, IBS, 치과용 임플란트, 기타 의료용 기기, 의료용 기기 제조업체">
    <meta name="author" content="Painkiller">
    <title>404|TK Company</title>
    <!-- Custom fonts for this template-->
    <link rel="stylesheet" type="text/css" href="<c:url value="${_ctx}/resources/vendor/fontawesome-free/css/all.min.css"/>">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <!-- Custom styles for this template-->
    <link rel="stylesheet" href="<c:url value="${_ctx}/resources/css/sb-admin-2.min.css"/>">
    <link rel="icon" type="image/x-icon" href="<c:url value="${_ctx}/resources/favicon.ico"/>">
</head>
<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon"><img src="<c:url value="${_ctx}/resources/img/logo.png"/>" width="40" height="20"
                                                 alt="TK Company"></div>
            <div class="sidebar-brand-text mx-2">TK Company</div>
        </a>
        <!-- Divider -->
        <hr class="sidebar-divider my-0">
        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Heading -->
        <div class="sidebar-heading">시스템관리</div>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSetUp"
               aria-expanded="true" aria-controls="collapseSetUp">
                <i class="fas fa-fw fa-cog"></i>
                <span>환경설정</span>
            </a>
            <div id="collapseSetUp" class="collapse" aria-labelledby="headingSetUp" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/">기본설정</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMenuMng"
               aria-expanded="true" aria-controls="collapseMenuMng">
                <i class="fas fa-fw fa-cog"></i>
                <span>메뉴관리</span>
            </a>
            <div id="collapseMenuMng" class="collapse" aria-labelledby="headingMenuMng" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/">메뉴목록</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUserMng"
               aria-expanded="true" aria-controls="collapseUserMng">
                <i class="fas fa-user"></i>
                <span>회원관리</span>
            </a>
            <div id="collapseUserMng" class="collapse" aria-labelledby="headingUserMng" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/">회원목록</a>
                    <a class="collapse-item" href="/">회원권한목록</a>
                </div>
            </div>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider">
        <!-- Heading -->
        <div class="sidebar-heading">서비스목록</div>
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseItemMng"
               aria-expanded="true" aria-controls="collapseItemMng">
                <i class="fas fa-fw fa-table"></i>
                <span>재고관리</span>
            </a>
            <div id="collapseItemMng" class="collapse" aria-labelledby="headingItemMng" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/itemList.do">재고현황</a>
                    <a class="collapse-item" href="/">Excel 자료 등록</a>
                </div>
            </div>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
    </ul>
    <!-- End of Sidebar -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3"><i
                        class="fa fa-bars"></i></button>
                <!-- Topbar Search -->
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
                      method="get" action="/">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">
                    <div class="topbar-divider d-none d-sm-block"></div>
                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">김용건</span>
                            <img class="img-profile rounded-circle"
                                 src="<c:url value="${_ctx}/resources/img/user_default.png"/>" title="회원사진">
                            <div style="display: none;">
                                아이콘 제작자 <a href="https://www.flaticon.com/kr/authors/freepik"
                                           title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/kr/"
                                                                               title="Flaticon"> www.flaticon.com</a>
                            </div>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="/"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>회원정보</a>
                            <a class="dropdown-item" href="/"><i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>활동로그</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/" data-toggle="modal" data-target="#logoutModal"><i
                                    class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>로그아웃</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- End of Topbar -->
            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- 404 Error Text -->
                <div class="text-center">
                    <div class="error mx-auto" data-text="404">404</div>
                    <p class="lead text-gray-800 mb-5">Page Not Found</p>
                    <p class="text-gray-500 mb-0">존재하지 않는 페이지입니다.</p>
                    <a href="/">&larr; 대시보드로 돌아가기</a>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; TK Company 2020</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">정말 로그아웃 하시겠습니까?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">서비스 사용을 종료하실 경우 아래 "로그아웃" 버튼을 선택하십시오.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                <a class="btn btn-primary" href="/">로그아웃</a>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="<c:url value="${_ctx}/resources/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="${_ctx}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Core plugin JavaScript-->
<script src="<c:url value="${_ctx}/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<!-- Custom scripts for all pages-->
<script src="<c:url value="${_ctx}/resources/js/sb-admin-2.min.js"/>"></script>
</body>
</html>


