<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Css Styles -->
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../../resources/css/style.css" type="text/css">
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
                                        src="img/listing/details/listing-details-1.jpg" alt="" style="margin-top: 50px;">
                                    <span><i class="fa fa-camera"></i> 170 Image</span>
                                </div>
                                <div class="listing__details__gallery__slider owl-carousel">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="img/listing/details/thumb-1.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="img/listing/details/thumb-2.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="img/listing/details/thumb-3.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="img/listing/details/thumb-4.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>무료나눔</h2>
                                <br>
                                
                                <a class="btn btn-secondary" style="float:right" href="">목록으로</a>
                                <br><br>
                                <table id="contentArea" align="center" class="table" border="1" style="border-color: lightgray;">
                                    <tr>
                                        <th width="100">제목</th>
                                        <td colspan="3">텐트 무료 나눔</td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td>user01</td>
                                        <th>작성일</th>
                                        <td>2023-03-31</td>
                                    </tr>
                                    <tr>
                                        <th>지역</th>
                                        <td colspan="3">
                                            <div class="filter__select">
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
                                            
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><p style="height:150px">무료나눔합니다</p></td>
                                    </tr>
                                </table>
                                <br>
                    
                                <div align="center">
                                    <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                                    <button type="button" class="btn btn-success" style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);"><a href="freeBoardUpdate.bo">수정하기</button></a> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
                                        <a class="btn btn-danger" onclick="">삭제하기</a>
                                </div><br><br>
                                
                        
                    
                                
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
    </section>
    <!-- Listing Details Section End -->

   

    <!-- Footer Section Begin -->
    <jsp:include page="../common/footer.jsp"/>
    <!-- Footer Section End -->

    
</body>
</html>