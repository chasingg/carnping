<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
    

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">

    <!-- icon(fontawesome.com) 등록 -->
    <script src="https://kit.fontawesome.com/78c41960c5.js" crossorigin="anonymous"></script>
    
    <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

      <!--드롭다운-->
    <!-- Our CSS stylesheet file -->
    <link rel="stylesheet" href="resources/assets/css/styles.css" />

    <!-- Font Awesome Stylesheet -->
    <link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.css" />

    <!-- Including Open Sans Condensed from Google Fonts -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700,300italic" />


    <!--member css  -->
    <!--  
    <link rel="stylesheet" href="resources/member/css/style.css" type="text/css">
    <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/member/assets/css/style.css">
	-->

    <style>
        #addSite{
            border-radius: 50px;
            background-color: #0ca678;
        }

        @font-face {
            font-family: 'Jal_Onuel';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        h2, h3{
            font-family: unset;
        }

        *{
            font-family: 'Jal_Onuel';
            font-weight: 200;
            /* letter-spacing: 0.15em; */
        }

        .modal *{
            letter-spacing: unset;
            font-family: 'Jal_Onuel';
            font-weight: 200;
        }


        i{
            padding-right:10px;
        }
        
        header{

        letter-spacing: 0.15em;
        }

        #themeTags a{
            border-radius:50px;
        }

        [type=checkbox] {

            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;

        }

        input[type=checkbox] + label { 
                display: inline-block; 
                cursor: pointer; 
        }

        #loginBtn{
            border-radius: 50px;
            border: 1px solid #0ca678;
            background-color: transparent;
            color:#0ca678;
        }

        #loginBtn:hover{
            background-color:white;
            transition: color .4s ease 0s,background-color .4s ease 0s
        }

        .nickname{
            color:white;
        }

        .nickname:hover{
            color:#0ca678;
        }

        .notification {
            text-decoration:none;
            position: relative;
            display: inline-block;
        }

        .notification .badge {
            position: absolute;
            top: -10px;
            right: -5px;
            padding: 5px 6px;
            border-radius: 50%;
            background: red;
            color: white;
            font-size: 9px;
        }

        .noti-text {
            width: 140px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            height:50px;
            white-space: normal;
            overflow: hidden;
        }

        .notiDiv span{color:white;}


        #myPost{
            width: 90px;
            white-space: nowrap;
            text-overflow: ellipsis;
            -webkit-line-clamp: 1;
            overflow: hidden;
        }      
        

    </style>
</head>
<c:if test="${ not empty alertMsg }">
	<script>
		alert("${alertMsg}");
	</script>
	<c:remove var="alertMsg" scope="session"/>
</c:if>
<!--letter-spacing: 0.1em;-->
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header" >
        <div class="headerBar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="header__logo" style="padding:20px 0px; text-align: center;">
                            <a href="./index.jsp"><img src="resources/img/logo_1.png" width="250px" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="header__nav" style="line-height: 25px;">
                            <nav class="header__menu mobile-menu">
                                <ul>
                                    <li class="active"><a href="./index.html">Home</a></li>
                                    <li><a href="carList.ca">차박지도</a></li>
                                    <li><a href="#">함께가요</a></li>
                                    <li><a href="freeBoard.bo">무료나눔</a></li>
                                </ul>
                            </nav>
                            <div class="header__menu__right" style="display:inline-flex">
                             	<c:choose>
		            				<c:when test="${ empty loginMember }">
		                                <button type="button" onclick="alert('로그인후 이용바랍니다.');" class="primary-btn btn" id="addSite" style="line-height: 27px; margin-right:35px;"><i class="fa fa-plus"></i>나만의 차박지 등록</button>
		                                <a href="loginForm.me" class="primary-btn" id="loginBtn" >로그인</a>
		                            </c:when>
		                            <c:otherwise>
                                <!-- 로그인 후 -->
		                                <a href="insertCarEnroll.ca" class="primary-btn" id="addSite" style="line-height: 27px; margin-right:35px;"><i class="fa fa-plus"></i>나만의 차박지 등록</a>
                                <div class="loggedin" style="width: 225px; display:flex; margin-right: 40px;">
                                    
                                    
                                    <nav id="colorNav">
                                        <ul>
                                            <li>
                                                <div style="padding-top: 10px; padding-left: 10px; padding-right: 20px;">
                                                    <a href="#" class="notification">
                                                        <span><i class="fa-solid fa-bell" style="color: #ffffff; font-size: 25px;"></i></span>
                                                        <span class="badge">2</span>
                                                    </a>
                                                    <ul style="left: 28%;">
                                                        <li>
                                                            <div style="height:70px;">
                                                                <div style="display:flex;justify-content: space-around;height: 50px;">
                                                                 <div style="border-radius: 50px; ">
                                                                        <i class="fa-solid fa-circle-user" class="nickname" style="padding: 0px 0px 0px 5px;
                                                                        font-size: 35px;
                                                                           line-height: 1.7em;"></i>
                                                                    </div>
                                                                    <div class="noti-text notiDiv">
                                                                        <div style="display:flex;">
                                                                            <a style="padding-left:unset; padding-right: unset;padding-top: 15px;">[</a><a href="http://tutorialzine.com/2012/10/css3-dropdown-menu/" style="padding-left:unset; padding-right: unset;padding-top: 15px;" id="myPost">차박장소 공유합니다아아아</a><a style="padding-left:unset; padding-right: unset;padding-top: 15px;">]</a>
                                                                            <span style="padding-top: 15px;">글에</span>
                                                                        </div>
                                                                        <a style="padding: unset;">댓글<span id="replyCount">[3]</span>이 달렸습니다.</a>
                                                                    </div>
                                                                </div>
                                                                <div style="float: right;
                                                                padding-right: 17px;
                                                                color: gray;
                                                                font-size: 5px;">
                                                                    33분 전
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li >
                                                            <div style="height:70px" class="notiDiv">
                                                                <a style="padding:15px 15px 0px;" href="http://tutorialzine.com/2012/10/css3-dropdown-menu/">내가 등록한 차박정보가 승인되었습니다.</a>
                                                                <div style="float: right;
                                                                padding-right: 17px;
                                                                color: gray;
                                                                font-size: 5px;">
                                                                    33분 전
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li></li>
                                                    </ul>
                                                        
                                                    
                                                </div>
                                            </li>
                                            <li style="margin-left: 15px;">
                                                <a href="#" class="nickname" style="padding: 3px 0px; display:flex;" >
                                                    <c:choose>
                                                        <c:when test="${ not empty loginMember.memImgOrigin }">
                                                            <div style="width: 35px; height: 35px; border-radius:50%; overflow:hidden;">
                                                                <img src="${loginMember.memImgChange}" alt="" style="object-fit: cover;">
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <i class="fa-solid fa-circle-user" style="padding: unset; font-size: 35px;"></i>
                                                        </c:otherwise>    
                                                    </c:choose>
                                                    <span style="padding-left: 15px; line-height: 35px;">
                                                    <c:choose>
                                                    <c:when test="${ not empty loginMember.nickName }">${ loginMember.nickName }</c:when>
                                                    <c:otherwise>${ loginMember.memId }</c:otherwise>
                                                    </c:choose></span>
                                                </a>
                                                <ul style="    width: 100px;
                                                text-align: center;left: 100%;">
                                                    <li><a style="    padding: 15px;" href="myPageMainSelect.me" style="font-size: unset;">마이페이지</a></li>
                                                    <li><a style="    padding: 15px;" href="logout.me" style="font-size: unset;">로그아웃</a></li>

                                                </ul>
                                            </li>

                                            
                                        </ul>
                                    </nav>
                                </div>
                                </c:otherwise>
                                </c:choose>
                            </div>
                        </div><!--headerNav-->
                    </div> <!--col-lg-9 col-md-9-->
                </div><!--row-->
                <div id="mobile-menu-wrap"></div>
            </div> <!--containerfluid-->
        </div> <!--headerbar-->
    </header>
    <!-- Header Section End -->

    	<c:if test="${ not empty alertMsg }">
	<script>
		alert("${ alertMsg }"); <%-- session 영역은 계속 저장되어있기 때문에 사용 후 꼭 제거해줘야 한다.--%>
		

	</script>
	<c:remove var="alertMsg" scope="session"/>
	</c:if>

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.nicescroll.min.js"></script>
    <script src="resources/js/jquery.barfiller.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
</body>

</html>