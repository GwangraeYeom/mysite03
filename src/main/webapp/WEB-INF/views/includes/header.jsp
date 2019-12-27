<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="com.bigdata2019.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

		<div id="header">
			<h1>MySite</h1>
			<ul>
				<%
					if(authUser == null){
				%>
					<li><a href="<%=request.getContextPath() %>/user/login">로그인</a><li>
					<li><a href="<%=request.getContextPath() %>/user/join">회원가입</a><li>
				<%
					} else { 
				%>
					<li><a href="<%=request.getContextPath() %>/user/update">회원정보수정</a><li>
					<li><a href="<%=request.getContextPath() %>/user/logout">로그아웃</a><li>
					<li><%=authUser.getName() %>님 안녕하세요 ^^;</li>
				<%
					}
				%>
			</ul>
		</div>