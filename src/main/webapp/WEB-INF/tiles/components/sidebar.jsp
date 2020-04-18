<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="sidebar-heading">시스템 관리</div>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSetUp"
           aria-expanded="true" aria-controls="collapseSetUp">
            <i class="fas fa-fw fa-cog"></i>
            <span>환경 설정</span>
        </a>
        <div id="collapseSetUp" class="collapse" aria-labelledby="headingSetUp" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/siteSetUp.do">기본 설정</a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMenuMng"
           aria-expanded="true" aria-controls="collapseMenuMng">
            <i class="fas fa-fw fa-cog"></i>
            <span>메뉴 관리</span>
        </a>
        <div id="collapseMenuMng" class="collapse" aria-labelledby="headingMenuMng" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/menuList.do">메뉴 목록</a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUserMng"
           aria-expanded="true" aria-controls="collapseUserMng">
            <i class="fas fa-user"></i>
            <span>회원 관리</span>
        </a>
        <div id="collapseUserMng" class="collapse" aria-labelledby="headingUserMng" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/userList.do">회원 목록</a>
                <a class="collapse-item" href="/userAuthList.do">회원 권한 목록</a>
            </div>
        </div>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">서비스 목록</div>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseItemMng"
           aria-expanded="true" aria-controls="collapseItemMng">
            <i class="fas fa-fw fa-table"></i>
            <span>재고 관리</span>
        </a>
        <div id="collapseItemMng" class="collapse" aria-labelledby="headingItemMng" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/itemList.do">재고 현황</a>
                <a class="collapse-item" href="/itemExcelUpload.do">Excel 자료 등록</a>
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