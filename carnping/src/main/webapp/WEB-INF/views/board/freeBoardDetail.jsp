<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>

	<jsp:include page="../common/header.jsp"/>
	
	
    

    <!-- Listing Details Section Begin -->
    <section class="listing-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__details__text">
                        
                        <div class="listing__details__gallery">
                            <div class="listing__details__gallery__pic">
                                <div class="listing__details__gallery__item">
                                    <img class="listing__details__gallery__item__large"
                                        src="${ b.boardChangeImg1 }" alt="" style="margin-top: 50px;">
                                    <span><i class="fa fa-camera"></i> 170 Image</span>
                                </div>
                                <div class="listing__details__gallery__slider owl-carousel">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg1 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg2 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg3 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg4 }" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>무료나눔</h2>
                                <br>
                                
                                <a class="btn btn-secondary" style="float:right" href="freeBoard.bo">목록으로</a>
                                <br><br>
                                <table id="contentArea" align="center" class="table" border="1" style="border-color: lightgray;">
                                    <tr>
                                        <th width="100">제목</th>
                                        <td colspan="3">${ b.boardTitle }</td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td>${ b.memId }</td>
                                        <th>작성일</th>
                                        <td>${ b.createDate }</td>
                                    </tr>
                                    <tr>
                                        <th>지역</th>
                                        <td colspan="3">
                                            ${ b.location }
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="4"><p style="height:150px">${ b.boardContent }</p></td>
                                    </tr>
                                 
                                </table>
                                <br>
                    
                                <div align="center">
                                    <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                                    <button type="button" class="btn btn-success" style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);" onclick="postFormSubmit(1)">수정하기</button> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
                                        <a class="btn btn-danger" onclick="postFormSubmit(2)">삭제하기</a>
                                </div><br><br>
                                
                                <form id="postForm" action="" method="post">
									<input type="hidden" name="bno" value="${ b.boardNo }"/>
									<input type="hidden" name="filePath" value="${ b.boardChangeImg1 }">
				            	</form>
                                
                        
                    
                                
                            </div>
                            <br><br>
                        </div>
                        
                        <ul class="listing__details__comment ul_line">
                            <h4>댓글</h4>
                            
                            <li>
                                <div class="listing__details__comment__item">
                                    <div class="listing__details__comment__item__pic">
                                        <img src="img/20258.jpg" alt="">
                                    </div>
                                    <div class="listing__details__comment__item__text">
                                        <div class="listing__details__comment__item__rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <span>March 22, 2019</span>
                                        <h5>임준석</h5>
                                        <div>
                                            <p>DM드릴게요</p>
                                            <img class="zoom" src="" alt="">
                                            <ul class="ul_line">
                                                <li><i class="fa fa-hand-o-right"></i> 좋아요</li>
                                                <li ><button type="button" class="scroll_reply"><i class="fa fa-share-square-o"></i>(3)댓글</button></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <ul class="ul_line ul_reply3">
                                        <hr>
                                        <div class="list_detail_reply">
                                            <li>
                                                <div class="listing__details__comment__item__pic">
                                                    <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                                </div>
                                                <div class="listing__details__comment__item__text">
                                                    <span>March 22, 2019</span>
                                                    <h5>윈터1</h5>
                                                    <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                                </div>
                                            </li>
                                        </div>
                                        <hr>
                                        <div class="list_detail_reply">
                                            <li>
                                                <div class="listing__details__comment__item__pic">
                                                    <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                                </div>
                                                <div class="listing__details__comment__item__text">
                                                    <span>March 22, 2019</span>
                                                    <h5>윈터2</h5>
                                                    <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                                </div>
                                            </li>
                                        </div>
                                        <hr>
                                        <div class="list_detail_reply">
                                            <li>
                                                <div class="listing__details__comment__item__pic">
                                                    <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                                </div>
                                                <div class="listing__details__comment__item__text">
                                                    <span>March 22, 2019</span>
                                                    <h5>윈터3</h5>
                                                    <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                                </div>
                                            </li>
                                        </div>
                                        
                                        <li>
                                            <div class="listing__details__review">
                                            <form action="">
                                                <textarea placeholder="대댓글"></textarea>
                                                <button type="submit" class="site-btn">대댓글 등록</button>
                                            </form>
                                        </div>
                                        </li>
                                    </ul>
                                
                                </div>
                             
                            </li>
                        </ul>

                        <script>
                            
                        </script>
                        <div class="listing__details__review">
                            <h4>댓글 작성</h4>
                            <form action="#">
                                <textarea placeholder="Review"></textarea>
                                <button type="submit" class="site-btn">댓글등록</button>
                            </form>
                        </div>

                        
                       
                    </div>
                </div>
                
            </div>
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
        
    </section>
    <script>
    function postFormSubmit(num){
		
		if(num == 1){ // 수정하기 클릭시
			$("#postForm").attr("action", "freeBoardUpdateForm.bo").submit();
		}else{ // 삭제하기 클릭시
			$("#postForm").attr("action", "freeBoardDelete.bo").submit();
		}
	}
    
    
    </script>
    
</body>
</html>