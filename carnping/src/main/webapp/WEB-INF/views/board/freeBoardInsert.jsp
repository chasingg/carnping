<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body
	class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">

	<jsp:include page="../common/header.jsp" />



	<div class="content container-fluid">
		<div class="row">
			<div class="col-xl-8 offset-xl-2">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<h3 class="page-title">무료나눔</h3>
							<br>
							<br>
						</div>
					</div>
				</div>
				<form id="enrollForm" method="post" action="freeBoardInsert.bo" enctype="multipart/form-data" >
				<div class="card">
					<div class="card-body">
						<div class="bank-inner-details">
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<label>제목<span class="text-danger"> *</span></label> 
										<input type="text" name="boardTitle" id="boardTitle"
											class="form-control" style="width: 57%;">
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<br> <label>작성자<span class="text-danger">
												*</span></label> <input type="text" class="form-control" value="admin"
											style="width: 20%; text-align: center;" readonly="readonly">
									</div>
									<br>
									<div class="filter__select">
										<label>지역<span class="text-danger"> *</span></label>
										&nbsp;&nbsp;&nbsp; 
										<select name="location" id="location">
											<option value="서울">서울</option>
							                <option value="경기">경기</option>
							                <option value="인천">인천</option>
							                <option value="대전">대전</option>
							                <option value="대구">대구</option>
							                <option value="광주">광주</option>
							                <option value="부산">부산</option>
							                <option value="제주도">제주도</option>
										</select>
									</div>
								</div>

								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>

								<div class="col-lg-12 col-md-12">
									<br>
								<div>
									<label>대표썸네일<span class="text-danger"> *</span></label> <br><br>
									<img id="titleImg"  width="250" height="170" onclick="chooseFile(1);">
								</div>	
								
								<br><br>
								<div>
									<label>상세사진<span class="text-danger"></span></label> <br><br>
									<img id="contentImg1" width="250" height="170" onclick="chooseFile(2);">
									<img id="contentImg2" width="250" height="170" onclick="chooseFile(3);">
									<img id="contentImg3" width="250" height="170" onclick="chooseFile(4);">
								</div>	
								
								<div id="file-area" style="display: none;">
						            <input type="file" name="upfile" id="file1" onchange="loadImg(this, 1);" required>
						            <input type="file" name="upfile" id="file2" onchange="loadImg(this, 2);">
						            <input type="file" name="upfile" id="file3" onchange="loadImg(this, 3);">
						            <input type="file" name="upfile" id="file4" onchange="loadImg(this, 4);">
						        </div>
									
									<br><br>
									<label style="float: left;">내용<span class="text-danger"> *</span></label> <br> <br>
									<textarea name="boardContent" id="boardContent" cols="100px"
										rows="15px" style="resize: none;"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class=" blog-categories-btn pt-0">
						<div class="bank-details-btn ">
						<button type = "button" class="btn btn-primary me-2"
								style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);" onclick="insertContent();">등록</button>
						</div>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>

	<script>
		function insertContent(){
			
			if($("#boardContent").val().trim().length != 0 && 
					$("#boardTitle").val().trim().length != 0 &&
					$("#titleImg").attr("src") != null ){
				
				$("#enrollForm").submit();
				
			}else{
				alert("하지마");
			}
		}
		
		function chooseFile(num){
			$("#file" + num).click();
		}
		
		function loadImg(inputFile, num){

            if(inputFile.files.length == 1){// 파일이 선택된 경우 => 파일을 읽어들여서 미리보기
                // 파일을 읽어들일 FileReader 객체 생성
                const reader = new FileReader();

                // 파일을 읽어들이는 메소드 호출
                reader.readAsDataURL(inputFile.files[0]);
                // 해당 파일을 읽어들이는 순간 해당 파일만의 고유한 url 부여

                // 파일 읽어들이기가 완료됐을 때 실행할 함수 정의해두기
                reader.onload = function(e){
                    // e.target.result => 읽어들인 파일의 고유한 url
                    switch(num){
                        case 1:
                            $("#titleImg").attr("src", e.target.result);
                            break;
                        
                        case 2:
                            $("#contentImg1").attr("src", e.target.result);
                            break;

                        case 3:
                            $("#contentImg2").attr("src", e.target.result);
                            break;

                        case 4:
                            $("#contentImg3").attr("src", e.target.result);
                            break;
                    }
                }
            }else{// 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
                switch(num){
                        case 1:
                            $("#titleImg").attr("src", null);
                            break;
                        
                        case 2:
                            $("#contentImg1").attr("src", null);
                            break;

                        case 3:
                            $("#contentImg2").attr("src", null);
                            break;

                        case 4:
                            $("#contentImg3").attr("src", null);
                            break;
                    }
            }
        }
	</script>



</body>
</html>