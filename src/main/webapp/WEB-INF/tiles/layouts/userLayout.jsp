<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <tiles:insertAttribute name="head"/>
    <title><tiles:getAsString name="title"/></title>
</head>
<body class="bg-gradient-primary">
    <div class="container">
        <tiles:insertAttribute name="body"/>
        <tiles:insertAttribute name="script"/>
    </div>
</body>
</html>