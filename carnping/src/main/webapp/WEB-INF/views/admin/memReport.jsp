﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Carnping | 관리자</title>
</head>

<body>
    <div class="main-wrapper">

    
        <jsp:include page="menubar.jsp"/>
        
        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">회원관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">대시보드</a>
                                </li>
                                <li class="breadcrumb-item active">신고 및 정지관리</li>
                            </ul>
                        </div>
                       
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-center table-hover datatable" style="text-align:center;">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>이름</th>
                                                <th>닉네임</th>
                                                <th>이메일</th>
                                                <th>신고누적횟수</th>
                                                <th>정지누적횟수</th>
                                                <th>현재 계정상태</th>
                                                <th>옵션</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="list" items="${ list }">
                                            <tr>
                                                <td>
                                                	<c:choose>
	                                                	<c:when test="${ list.memImgOrigin eq null }">
		                                                    <h2 class="table-avatar" style="cursor: pointer;">
		                                                    
																<a href="memEdit.ad?memNo=${ list.reportedMemNo }" class="avatar avatar-sm me-2"><img
				                                                                class="avatar-img rounded-circle"
				                                                                src="resources/admin/assets/img/userImg.png"
				                                                                alt="User Image"></a> 
                                                                
			                                                    <a href="memEdit.ad?memNo=${ list.reportedMemNo }">${ list.memName } <span>${ list.reportedMemNo }
			                                                           </span></a>
		                                                   	</h2>
                                             			</c:when>
	                                           			<c:otherwise>
		                                          			<h2 class="table-avatar">
			                                                  	<a href="#" class="avatar avatar-sm me-2"><img
			                                                           class="avatar-img rounded-circle"
			                                                           src="${ list.memImgChange }"
			                                                           alt="User Image"></a>
				                                             	<a href="#">${ list.memName } <span>${ list.reportedMemNo }
			                                                      </span></a>
			                                              	</h2>
	                                             		</c:otherwise>
                                                		
                                               		</c:choose>
                                                </td>
                                                <td>${ list.nickName }</td>
                                                <td>
                                                	${ list.email }
                                                </td>
                                                <td>${ list.reportCount }</td>
                                                <td>${ list.suspendCount }</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${ list.status eq 'Y' }">
			                                                <span class="badge badge-pill bg-success-light">활동중</span>
	                                                	</c:when>
                                                        <c:when test="${ list.status eq 'S' }">
			                                                <span class="badge badge-pill bg-danger-light">활동 정지</span>
	                                                	</c:when>	                                                	
                                                        <c:otherwise>
                                                            <span class="badge badge-pill bg-danger-light">영구 정지</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                 </td>
	                                                
                                                <td class="">
                                                    <a data-bs-toggle="modal" data-bs-target="#scrollable-modal-${ list.reportedMemNo }"
                                                        class="btn btn-sm btn-white text-success me-2"><i
                                                            class="far fa-edit me-1" ></i>상세</a>
                                                    
                                                            <div class="modal fade" id="scrollable-modal-${ list.reportedMemNo }" tabindex="-1" role="dialog" aria-labelledby="scrollableModalTitle"
                                                            aria-hidden="true">
                                                            <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="scrollableModalTitle">상세내역</h5>
                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>
                                                
                                                                    <div class="modal-body">
                                                                        <div class="card-body">
                                                                            <div class="table-responsive">
                                                                                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                                
                                                                                    <div class="row">
                                                                                        <div class="col-sm-12">
                                                                                            <table class="datatable table table-stripped dataTable no-footer"
                                                                                                id="DataTables_Table_0" role="grid"
                                                                                                aria-describedby="DataTables_Table_0_info">
                                                                                                <thead>
                                                                                                    <tr role="row">
                                                                                                        <th class="sorting_asc" tabindex="0"
                                                                                                            aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                                                                                            aria-sort="ascending"
                                                                                                            aria-label="Name: activate to sort column descending"
                                                                                                            style="width: 10px;">신고번호</th>
                                                                                                        <th class="sorting" tabindex="0"
                                                                                                            aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                                                                                            aria-label="Position: activate to sort column ascending"
                                                                                                            style="width: 10px;">신고된 글번호</th>
                                                                                                        <th class="sorting" tabindex="0"
                                                                                                            aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                                                                                            aria-label="Office: activate to sort column ascending"
                                                                                                            style="width: 500px;">신고내용</th>
                                                                                                        <th class="sorting" tabindex="0"
                                                                                                            aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                                                                                            aria-label="Age: activate to sort column ascending"
                                                                                                            style="width: 30px;">신고일자</th>
                                                
                                                                                                    </tr>
                                                                                                </thead>
                                                                                                <tbody>
                                                                                                
                                                                                                       <c:forEach var="report" items="${ reportList }">
                                                                                                        <tr role="row" class="odd" onclick="location.href='freeBoardDetail.bo?bno=${report.reportRefNo}'" style="cursor:pointer;">
                                                                                                            <td class="sorting_1">${report.reportNo}</td>
                                                                                                            <td>${report.reportRefNo }</td>
                                                                                                            <td>${report.reportDetail }</td>
                                                                                                            <td>${report.reportDate}</td>
                                                    
                                                                                                        </tr>
                    
                                                                                                    </c:forEach>
                                                                                                     
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row">
                                                
                                                                                        <div class="col-sm-12 col-md-7">
                                                                                            <div class="dataTables_paginate paging_simple_numbers"
                                                                                                id="DataTables_Table_0_paginate">
                                                                                                <ul class="pagination">
                                                                                            </div>
                                                
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="modal-footer" style="display:block;">

                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="float: right;margin-top: 20px;">닫기</button>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                        <div class="button-list">
                                                                        </div>
                                                                    </div>
                                                
                                                                </div>
                                                            </div>
                                                        </div>


                                                    <a href="javascript:void(0);"
                                                        class="btn btn-sm btn-white text-danger me-2" data-bs-toggle="modal" data-bs-target="#top-modal-${list.reportedMemNo }"><i
                                                            class="far fa-trash-alt me-1"></i>정지</a>
                                                            
                                                     <div id="top-modal-${list.reportedMemNo }" class="modal fade" tabindex="-1" role="dialog"
					                                    aria-hidden="true">
					                                        <div class="modal-dialog modal-top">
					                                            <div class="modal-content">
					                                                <div class="modal-header">
					                                                    <h4 class="modal-title" id="topModalLabel">회원탈퇴</h4>
					                                                    <button type="button" class="btn-close"
					                                                        data-bs-dismiss="modal"
					                                                        aria-label="Close"></button>
					                                                </div>
					                                                <div class="modal-body">
					                                                    <br>
					                                                    <h5 align="center">정말 ${list.reportedMemNo }님을 정지 시키겠습니까?</h5>
					                                                    <p align="center" style="color:gray; margin-bottom: 0.2rem;">
					                                                    ${list.reportedMemNo } 님은 신고 누적 횟수 ${ list.reportCount }회, 
					                                                   	정지 누적 횟수 ${ list.suspendCount }회 이므로</p>
					                                                   	<p align="center" style="color:gray">
					                                                    <c:choose>
					                                                    	<c:when test="${list.reportCount lt 3 }">
					                                                    		정지 대상이 아닙니다.
					                                                    	</c:when>
					                                                    	<c:when test="${list.reportCount gt 2 and list.suspendCount eq 0 }">
					                                                    		7일 정지 대상입니다.
					                                                    	</c:when>
					                                                    	<c:when test="${list.reportCount gt 2 and list.suspendCount eq 1 }">
					                                                    		14일 정지 대상입니다.
					                                                    	</c:when>
					                                                    	<c:when test="${list.reportCount gt 2 and list.suspendCount eq 2 }">
					                                                    		한 달 정지 대상입니다.
					                                                    	</c:when>
					                                                    	<c:otherwise>
					                                                    		영구 정지 대상입니다.
					                                                    	</c:otherwise>
					                                                    </c:choose>
					                                                    </p>
					                                                </div>
					                                                <hr>
					                                                <div class="modal-footer">
					                                                        <c:if test="${ list.status eq 'S' }">
					                                                        	<button type="button" class="btn btn-primary" onclick="location.href='memRecover.ad?memNo=${list.reportedMemNo}'">정지해제</button>
					                                                        </c:if>
					                                                        <c:choose>
					                                                        	<c:when test="${list.suspendCount eq 0 and list.reportCount gt 2 }">
							                                                        <button type="button" class="btn btn-primary" onclick="location.href='memSuspend.ad?flag=1&memNo=${list.reportedMemNo}'">정지(7일)</button>
						                                                        </c:when>
					                                                        	<c:when test="${list.suspendCount eq 1 }">
							                                                        <button type="button" class="btn btn-primary" onclick="location.href='memSuspend.ad?flag=2&memNo=${list.reportedMemNo}'">정지(14일)</button>
						                                                        </c:when>
					                                                        	<c:when test="${list.suspendCount eq 2 }">
							                                                        <button type="button" class="btn btn-primary" onclick="location.href='memSuspend.ad?flag=3&memNo=${list.reportedMemNo}'">정지(21일)</button>
						                                                        </c:when>
					                                                        	<c:when test="${list.suspendCount eq 3 } ">
							                                                        <button type="button" class="btn btn-primary" onclick="location.href='memSuspend.ad?flag=B&memNo=${list.reportedMemNo}'">영구 정지</button>
						                                                        </c:when>
					                                                        </c:choose>
					                                                    <button type="button" class="btn btn-light"
					                                                        data-bs-dismiss="modal">닫기</button>
					                                                </div>
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