<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
	.wrap-vertical {
			
        padding: 20px; 
        overflow: scroll;
        
        /* 가로 스크롤 */
        overflow: auto;
        white-space: nowrap;
    }
    .contentImg {
        padding: 30px;
        text-align: center;
        
    }

    .bigImgs{
        margin-bottom: 10px;
    }

    .bigImg{
        width: 310px;
        height: 310px;
    }
    .smallImgs{
        overflow: auto;
        white-space: nowrap;
    }
    .smallImg{
        width:100px;
        height:100px;
        
    }

</style>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="main-wrapper">

    <jsp:include page="menubar.jsp"/>
<div class="page-wrapper">

<div class="content container-fluid">
<div class="page-header">
    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">공지사항 등록</h5>
            </div>
            <div class="card-body">
                <form action="#" method="post"
                    enctype="multipart/form-data">
                    <input type="hidden" value="" name="imgSrc">
                    <input type="hidden" value="" name="cinfoNo">
                    
                   
                    <div class="row">
                        <label for="file" class="col-form-label col-sm-3">이미지

                        </label>
                        <div class="wrap-vertical col-sm-9">
                            
                        <table>
                            <tr>
                                <td>
                                    <img id="contentImg1" width="100"
                                        height="100" onclick="chooseFile(1);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg2" width="100"
                                        height="100" onclick="chooseFile(2);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg3" width="100"
                                        height="100" onclick="chooseFile(3);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg4" width="100"
                                        height="100" onclick="chooseFile(4);"
                                        onerror="this.style.display='none'">
                                </td>
                                <td>
                                    <img id="contentImg5" width="100"
                                        height="100" onclick="chooseFile(5);"
                                        onerror="this.style.display='none'">
                                </td>
                                

                            </tr>
                        </table>
                           
                        <input type="file" name="file1" id="file1"
                            style="display: none;" onchange="loadImg(this,1);" >
                        <input type="file" name="file2" id="file2"
                            style="display: none;" onchange="loadImg(this,2);" >
                        <input type="file" name="file3" id="file3"
                            style="display: none;" onchange="loadImg(this,3);" >
                        <input type="file" name="file4" id="file4"
                            style="display: none;" onchange="loadImg(this,4);" >
                        <input type="file" name="file5" id="file5"
                            style="display: none;" onchange="loadImg(this,5);" >

                        </div>
                    </div>
                <br>
                    <div class="row form-group">
                        <label for="id" class="col-sm-3 col-form-label input-label">공지사항 제목</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" 
                            placeholder="공지사항 제목 입력" value=""
                            name="" required>
                        </div>
                    </div>

                    <div class="row form-group">
                        <label for="pwd" class="col-sm-3 col-form-label input-label">공지사항 내용</label>
                        <div class="col-sm-9">
                            <textarea class="form-control col-sm-9" rows="3" id="textarea-copy" style="height: 189px;"name="cinfoContent"
                            placeholder="공지사항 내용 입력"></textarea>
                        </div>
                    </div>

                    <div class="text-end">
                        <button type="button" onclick="history.back()"
                        class="btn btn-primary">뒤로가기</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
<script>

    chooseFile = function(num){
        $("#file"+num).click();
    }
    
    loadImg = function(inputFile ,num){
        // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
        // num : 몇번째 input 요소 확인 후 해당 그 영역에 미리보기 하기 위해 전달받아


        // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
        //                    => inputFiles.files.length 또한 1이 될꺼임

        if(inputFile.files.length ==1){ // 파일 선택된 경우 => 파일 읽어들임
            
            // 파일을 읽어들일 FileReader 객체 생성
            const reader = new FileReader();

            // 파일을 읽어들이는 메소드 호출
            reader.readAsDataURL(inputFile.files[0]);
            // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

            //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
            reader.onload = function(e){
                // e.target.result => 읽어들인 파일의 고유한 url

            switch(num){
                case 1: $("#contentImg1").attr("src", e.target.result); break;
                case 2: $("#contentImg2").attr("src", e.target.result); break;
                case 3: $("#contentImg3").attr("src", e.target.result); break;
                case 4: $("#contentImg4").attr("src", e.target.result); break;
                case 5: $("#contentImg4").attr("src", e.target.result); break;
                }
            }
                
        } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
            switch(num){
                case 1: $("#contentImg1").attr("src", null); break;
                case 2: $("#contentImg2").attr("src", null); break;
                case 3: $("#contentImg3").attr("src", null); break;
                case 4: $("#contentImg4").attr("src", null); break;
                case 5: $("#contentImg5").attr("src", null); break;
                 
            }
        }
    }
</script>
</form>

</div>
</div>
</div>
</div>
</div>
</div>
</body>

</html>