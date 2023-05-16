<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="ov-hid">
    <jsp:include page="../common/header.jsp"/>

    <!-- Filter Begin -->
    <div class="filter nice-scroll">
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> 지역검색</h5>
        </div>
        <div class="filter__search">
            <input type="text">
        </div>
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
        
        
        
       
        
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll" style="width: 100%;">
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>소모임 게시판</h5>
                
            </div>
            <div class="listing__text__top__right">최신순<i class="fa fa-sort-amount-asc"></i></div> <br><br>
            <button style="float: right; background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">
            <a href="partyBoardInsert.bo">모임등록</button></a>


        </div>
        <div class="listing__list" style="align-content: center;">
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5><a href="partyBoardDetail.bo">가평 번개 파티 구함</h5></a>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            
            
        </div>
        <jsp:include page="../common/footer.jsp"/>
    </section>
   

    
</body>
</html>