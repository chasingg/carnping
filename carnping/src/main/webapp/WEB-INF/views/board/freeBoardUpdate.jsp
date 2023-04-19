<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">





<div class="content container-fluid">
<div class="row">
<div class="col-xl-8 offset-xl-2">

<div class="page-header">
<div class="row">
<div class="col-sm-12">
<h3 class="page-title">무료나눔</h3>
</div>
</div>
</div>

<div class="card">
<div class="card-body">
<div class="bank-inner-details">
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="form-group">
<label>제목<span class="text-danger"> *</span></label>
<input type="text" class="form-control" value="가평 번개 파티 구함" style="width: 57%;">
</div>
</div>
<div class="col-lg-12 col-md-12">
    <div class="form-group"> <br>
    <label>작성자<span class="text-danger"> *</span></label>
    <input type="text" class="form-control" value="user01" style="width: 20%; text-align: center;" >
    </div> <br>
    <div class="filter__select">
        <label>지역<span class="text-danger"> *</span></label> &nbsp;&nbsp;&nbsp;
        <select>
            <option value="">서울</option>
            <option value="">경기</option>
            <option value="">인천</option>
            <option value="">대전</option>
            <option value="">대구</option>
            <option value="">광주</option>
            <option value="">부산</option>
            <option value="">제주도</option>
        </select>
    </div>
</div>
<!--
<div class="col-lg-12 col-md-12">
    <div class="form-group modal-select-box" style="width: 20%;">
    <label>지역</label>
    <select class="select">
    <option value="1">서울</option>
    <option value="2">경기</option>
    <option value="2">인천</option>
    <option value="2">대전</option>
    <option value="2">대구</option>
    <option value="2">광주</option>
    <option value="2">부산</option>
    <option value="2">제주도</option>
    </select>
    </div>
</div>



<div class="col-lg-12 col-md-12">
<div class="form-group">
<label style="float: left;">파일첨부</label> <br> <br>
<div class="change-photo-btn" style="width: 20%; float: left;">
<div>
<p>Add Image</p></div>
<input type="file" class="upload">
</div>
</div>
</div> <br><br><br><br><br><br><br><br><br>
-->

<br><br><br><br><br><br><br>
<div class="col-lg-12 col-md-12">
    <label style="float: left;">내용</label> <br> <br>
<textarea name="" id="" cols="100px" rows="15px" style="resize: none;"></textarea>
</div>
</div>
</div>
</div>
<div class=" blog-categories-btn pt-0">
<div class="bank-details-btn ">
<a href="blog.html" class="btn btn-primary me-2" style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);"  >수정</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div>


<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/feather.min.js"></script>

<script src="assets/js/ckeditor.js"></script>

<script src="assets/js/select2.min.js"></script>

<script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>

<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="assets/js/script.js"></script>
</body>
</html>