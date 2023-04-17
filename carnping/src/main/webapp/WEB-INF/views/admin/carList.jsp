<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Jassa - Bootstrap Admin HTML Template</title>

    <link rel="shortcut icon" href="assets/img/favicon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="main-wrapper">

        <jsp:include page="menubar.jsp"/>

        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">게시글관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">게시글관리</a>
                                </li>
                                <li class="breadcrumb-item active">차박게시글</li>
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


                <div id="filter_inputs" class="card filter-card">
                    <div class="card-body pb-0">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>휴대폰</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
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
                                                <th>총평점</th>
                                                <th>조회수</th>
                                                <th>등록일</th>
                                                <th>수정일(마지막)</th>
                                                <th class="text-end">옵션</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="carDetail.html" class="avatar avatar-md me-2"><img
                                                                class="avatar-img rounded-circle"
                                                                src="../car/img/yangyang_3.png"
                                                                alt="User Image"></a>
                                                        <a href="memEdit.html">서퍼들의 천국, 양양 죽도해변<span>CAR1
                                                            </span></a>
                                                    </h2>
                                                </td>
                                                <td>
                                                    4.6
                                                </td>
                                                <td>357</td>
                                                <td>2020-12-13</td>
                                                <td>2020-12-13</td>
                                                <td class="text-end">
                                                    <a href="carDetail.html"
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
                                                                    <button type="button" class="btn btn-primary">삭제</button>
                                                     ㅈ           </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="carDetail.html" class="avatar avatar-md me-2"><img
                                                                class="avatar-img rounded-circle"
                                                                src="../car/img/test2.png"
                                                                alt="User Image"></a>
                                                        <a href="memEdit.html">일출과 일몰을 함께, 당진 왜목마을<span>CAR2</span></a>
                                                    </h2>
                                                </td>
                                               
                                                <td>4.5</td>
                                                <td>121</td>
                                                <td>2020-02-11</td>
                                                <td>2020-02-11</td>
                                                <td class="text-end">
                                                    <a href="carDetail.html"
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



    <script data-cfasync="false"
        src="../../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="assets/js/jquery-3.6.0.min.js"></script>

    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/feather.min.js"></script>

    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="assets/plugins/datatables/datatables.min.js"></script>

    <script src="assets/js/script.js"></script>
</body>

</html>