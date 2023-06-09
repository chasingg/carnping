<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Jassa - Bootstrap Admin HTML Template</title>
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
<div class="main-wrapper">

    <jsp:include page="menubar.jsp"/>
 

    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">QnA관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">대시보드</a>
                            </li>
                            <li class="breadcrumb-item active">문의리스트</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="add-customer.html" class="btn btn-primary me-1">
                            <i class="fas fa-plus"></i>
                        </a>
                        <a class="btn btn-primary filter-btn" href="javascript:void(0);" id="filter_search">
                            <i class="fas fa-filter"></i>
                        </a>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-center table-hover datatable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>회원ID(회원번호)</th>
                                            <th>카테고리</th>
                                            <th>문의제목</th>
                                            <th>등록일</th>
                                            <th>문의상태</th>
                                            <th class="text-end">옵션</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="list" items="${ list }">
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a href="#">${ list.memId }<span>${ list.memNo }
                                                        </span></a>
                                                </h2>
                                            </td>
                                            <td>
                                                ${ list.queCategory }
                                            </td>
                                            <td>${ list.queTitle }</td>
                                            <td>${ list.queDate }</td>
                                            <td>
                                            	<c:choose>
                                            		<c:when test="${ list.queStatus.equals('Y') }">
			                                            <span class="badge badge-pill bg-success-light">답변완료</span>
                                            		</c:when>
                                            		<c:otherwise>
                                            			<span class="badge badge-pill bg-danger-light">답변미완료</span>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </td>
                                            <td class="text-end">
                                            
                                                <button type="button" onclick="questionDetail('${list.queNo}');"
                                                    class="btn btn-sm btn-white text-success me-2"><i
                                                        class="far fa-edit me-1"></i> 상세(수정)</button>
                                                <a href="javascript:void(0);"
                                                    class="btn btn-sm btn-white text-danger me-2"
                                                    data-bs-toggle="modal" data-bs-target="#top-modal"><i
                                                        class="far fa-trash-alt me-1"></i>삭제</a>


                                                <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog modal-top">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="topModalLabel">게시글 삭제</h4>
                                                                <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <br>
                                                                <h5 align="center">정말로 **를(을) 삭제 하시겠습니까?</h5>
                                                                <p align="center" style="color:gray">삭제시 복구가 매우 어렵습니다. 신중히 선택바랍니다.</p>
                                                            </div>
                                                            <hr>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-light"
                                                                    data-bs-dismiss="modal">닫기</button>
                                                                <button type="button" class="btn btn-primary" onclick="questionDelete('${list.queNo}');">삭제</button>
                                                            </div>
                                                            <script>
questionDelete = function(queNo){
	console.log("1?")
	location.href = "questionDelete.ad?queNo="+queNo;
}
 questionDetail = function(queNo){
	location.href = "questionDetail.ad?queNo="+queNo;
}
</script>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        
										</c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</body>

</html>