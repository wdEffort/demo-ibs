<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <tiles:insertAttribute name="head"/>
    <title><tiles:getAsString name="title"/></title>
</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
        <tiles:insertAttribute name="sidebar"/>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <tiles:insertAttribute name="nav"/>
                <tiles:insertAttribute name="body"/>
            </div>
            <!-- End of Main Content -->
            <tiles:insertAttribute name="footer"/>
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <tiles:insertAttribute name="logout"/>
    <tiles:insertAttribute name="script"/>
</body>
</html>

