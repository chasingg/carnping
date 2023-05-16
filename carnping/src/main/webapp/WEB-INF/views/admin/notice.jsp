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
                        <h3 class="page-title">공지사항관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">대시보드</a>
                            </li>
                            <li class="breadcrumb-item active">공지사항관리</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="insertNotice.ad" class="btn btn-primary me-1">
                            공지사항 추가
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
                                            <th>글이름(글번호)</th>
                                            <th>조회수</th>
                                            <th>작성일</th>
                                            <th class="text-end">옵션</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    
                                                    <a href="updateNotice.html">[공지]차박시 기본수칙<span>NTC1
                                                        </span></a>
                                                </h2>
                                            </td>
                                            <td>
                                                30
                                            </td>
                                            <td>2020-12-13</td>
                                            <td class="text-end">
                                                <a href="updateNotice.ad"
                                                    class="btn btn-sm btn-white text-success me-2"><i
                                                        class="far fa-edit me-1"></i> 상세(수정)</a>
                                                <a href="javascript:void(0);"
                                                    class="btn btn-sm btn-white text-danger me-2"
                                                    data-bs-toggle="modal" data-bs-target="#top-modal"><i
                                                        class="far fa-trash-alt me-1"></i>삭제</a>


                                                <div id="top-modal" class="modal fade" tabindex="-1" role="dialog"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog modal-top">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="topModalLabel">공지사항 삭제</h4>
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
                                                                <button type="button" class="btn btn-primary">삭제</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    
                                                    <a href="updateNotice.html">[공지]차박시 유의사항<span>NTC2</span></a>
                                                </h2>
                                            </td>
                                            <td>121</td>
                                            <td>2020-02-11</td>
                                            <td class="text-end">
                                                <a href="updateNotice.ad"
                                                    class="btn btn-sm btn-white text-success me-2"><i
                                                        class="far fa-edit me-1"></i> 상세(수정)</a>
                                                <a href="javascript:void(0);"
                                                    class="btn btn-sm btn-white text-danger me-2"><i
                                                        class="far fa-trash-alt me-1"></i>삭제</a>
                                            </td>
                                        </tr>


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