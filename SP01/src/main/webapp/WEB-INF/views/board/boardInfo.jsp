<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<body>

<div class="container mt-3">
        <div class="row" v-if="boardInfo !== null">
            <div class="col-md-12 offset-md-0">
                <h1 class="my-3">게시판</h1>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">${boardInfo.title}</h3>
                        <div style="float:left">
                            <p class="card-text" style="text-align='right'; display:inline-block;">${boardInfo.writer} | <fmt:formatDate value="${boardInfo.regdate}" pattern="yyyy년MM월dd일"/></p>
                        </div>
                        <div style="float:right">
                            <p class="card-text" style="text-align='right'; display:inline-block;">조회 0 | 댓글 0</p>
                        </div>
                    </div>
                    <div class="card-body" style="min-height: 600px;">
                        ${boardInfo.contents }
                    </div>
                    <div class="card-footer">
                    	<c:if test="${fn:length(boardInfo.image) > 0}">
                    		<img style="width:200px;" src="<c:url value="/resources/${boardInfo.image}"/>" />
                    	</c:if>
                    </div>
                </div>
                <div class="mt-1 text-right" v-if="$store.state.userNo == boardUserNo ">
                	<button style="background-color:#bbbbbb; border:0;" class="btn btn-primary" onclick="location.href='boardList'">목록으로</button>
                    <button style="background-color:#acb1f8; border:0; margin : 10px;" class="btn btn-primary" onclick="location.href='boardUpdate?bno=${boardInfo.bno}'" >수정하기</button>
                    <button style="background-color:#bbbbbb; border:0;" class="btn btn-primary" onclick="location.href='boardDelete?bno=${boardInfo.bno}'">삭제하기</button>
                </div>
            </div>
        </div>
    </div>