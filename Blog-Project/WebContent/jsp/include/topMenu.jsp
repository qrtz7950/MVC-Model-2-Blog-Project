<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align="center">
	<a style="font-size: 30pt;" >Blog Main</a>
	<a href="${ pageContext.request.contextPath }">마이홈</a>
	<a href="${ pageContext.request.contextPath }/board/list.do">게시판</a>
		<c:choose>
			<c:when test="${empty userVO}">
				<a href="${ pageContext.request.contextPath }/login/login.do">로그인</a>
			</c:when>
			<c:otherwise>
				<a href="${ pageContext.request.contextPath }/login/logout.do">로그아웃</a>
			</c:otherwise>
		</c:choose>
	<a href="${ pageContext.request.contextPath }/member/signUp.do">회원가입</a>
	<a href="${ pageContext.request.contextPath }/member/viewAllMember.do">회원목록</a>
</div>