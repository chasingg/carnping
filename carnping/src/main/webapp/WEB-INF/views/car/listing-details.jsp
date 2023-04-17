<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-heart-eyes" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M11.315 10.014a.5.5 0 0 1 .548.736A4.498 4.498 0 0 1 7.965 13a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .548-.736h.005l.017.005.067.015.252.055c.215.046.515.108.857.169.693.124 1.522.242 2.152.242.63 0 1.46-.118 2.152-.242a26.58 26.58 0 0 0 1.109-.224l.067-.015.017-.004.005-.002zM4.756 4.566c.763-1.424 4.02-.12.952 3.434-4.496-1.596-2.35-4.298-.952-3.434zm6.488 0c1.398-.864 3.544 1.838-.952 3.434-3.067-3.554.19-4.858.952-3.434z"/></svg>
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <code class="hljs">&lt;style&gt;

       
        &lt;/style&gt;</code>
</head>

<body>
    <jsp:include page="../common/header.jsp"/>
    
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

    
    <!-- <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 col-sm-5">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li class="active"><a href="./listing.html">Listing</a></li>
                                <li><a href="#">Categories</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">About</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Blog</a></li>
                                <li><a href="#">Shop</a></li>
                            </ul>
                        </nav>
                        <div class="header__menu__right">
                            <a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header> -->



    <!-- Listing Section Begin -->
    <section class="listing-hero set-bg" data-setbg="img/camping.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__hero__option">
                        <div class="listing__hero__icon">
                            <img src="img/listing/ocean.png" alt="">
                        </div>
                        <div class="listing__hero__text">
                            <h2>서퍼들의 천국, 양양 죽도해변</h2>
                            <div class="listing__hero__widget">
                                <div class="listing__hero__widget__rating">
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star-half_alt"></span>
                                </div>
                                <div>120 Review</div>
                            </div>
                            <p><span class="icon_pin_alt"></span> 강원도 양양군 현남면 인구중앙길 88</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="listing__hero__btns">
                        <a href="#" class="primary-btn share-btn"><i class="fa fa-mail-reply"></i>뒤로가기 </a>
                        <a href="#" class="primary-btn"><i class="fa fa-bookmark"></i> 위시리스트</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Listing Section End -->

    <!-- Listing Details Section Begin -->
    <section class="listing-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__details__text">
                        <div class="listing__details__about">
                            <h4>소개</h4>
                            <p>국내 3대 서핑 스팟 중 하나인 '양양 죽도해변'. 바다 앞에 대나무가 자라는 섬이 있었기에 
                                '죽도'라고 한다. 이곳의 캠핑장에 머무르며 서핑을 즐겨보는 건 어떨까? 양양은 서피비치부터 
                                죽도해변, 인구해변 등으로 이어지는 해안선을 따라 서핑 강습소와 렌탈숍, 서핑용품과 의류 편집숍
                                 등을 겸하는 숙소, 분위기 좋은 바, 카페, 음식점, 편의시설이 들어서며 독특한 문화를 만들어가고 있다.

                        </div>
                        <div class="listing__details__gallery">
                            <h4>사진</h4>
                            <div class="listing__details__gallery__pic">
                                <div class="listing__details__gallery__item">
                                    <img  style="width:1000px; height:450px;"
                                     class="listing__details__gallery__item__large"
                                        src="img/yangyang_3.png" alt="">
                                    <span><i class="fa fa-camera"></i> 4 Image</span>
                                </div>
                                <div class="listing__details__gallery__slider owl-carousel">
                                    <!-- 포문으로 돌릴거 클래스 유지 되면 온클릭으로 이미지 크게 띄울거-->

                                    <img data-imgbigurl="img/yangyang_3.png"
                                    style="width:200px; height:120px;"
                                        src="img/yangyang_3.png" alt="">
                                    <img data-imgbigurl="img/detail-1.PNG"
                                    style="width:200px; height:120px;"
                                        src="img/detail-1.PNG" alt="">
                                    <img data-imgbigurl="img/detail-2.PNG"
                                    style="width:200px; height:120px;"
                                        src="img/detail-2.PNG" alt="">
                                    <img data-imgbigurl="img/detail-3.PNG"
                                        style="width:200px; height:120px;"
                                        src="img/detail-3.PNG" alt="">

                                </div>
                            </div>
                        </div>
                        <div class="listing__details__amenities">
                            <h4>주변시설</h4>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-0-circle" viewBox="0 0 16 16">
                                            <path d="M7.988 12.158c-1.851 0-2.941-1.57-2.941-3.99V7.84c0-2.408 1.101-3.996 2.965-3.996 1.857 0 2.935 1.57 2.935 3.996v.328c0 2.408-1.101 3.99-2.959 3.99ZM8 4.951c-1.008 0-1.629 1.09-1.629 2.895v.31c0 1.81.627 2.895 1.629 2.895s1.623-1.09 1.623-2.895v-.31c0-1.8-.621-2.895-1.623-2.895Z"/>
                                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Z"/>
                                          </svg>
                                        <i class="bi bi-thermometer-snow"></i>
                                        <i class="bi bi-0-circle"></i>
                                        <h6>Accept Credit Card</h6>
                                     
                                    </div>
                                    
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-2.png" alt="">
                                        <h6>Free Wifi</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-3.png" alt="">
                                        <h6>Smoking Area</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-4.png" alt="">
                                        <h6>Free Parking</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-5.png" alt="">
                                        <h6>Family Friendly</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-6.png" alt="">
                                        <h6>Coffee</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-7.png" alt="">
                                        <h6>Massage</h6>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-6">
                                    <div class="listing__details__amenities__item">
                                        <img src="img/listing/details/amenities/ame-8.png" alt="">
                                        <h6>Coupons</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="listing__details__rating">
                            <h4>평점</h4>
                            <div class="listing__details__rating__overall">
                                <h2>4.7</h2>
                                <div class="listing__details__rating__star">
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                </div>
                                <span>(120개 리뷰)</span>
                            </div>
                            <div class="listing__details__rating__bar">
                                <div class="listing__details__rating__bar__item">
                                    <span>4.4</span>
                                    <div id="bar1" class="barfiller">
                                        <span class="fill" data-percentage="50"></span>
                                    </div>
                                    <span class="right">뷰</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>3.9</span>
                                    <div id="bar2" class="barfiller">
                                        <span class="fill" data-percentage="75"></span>
                                    </div>
                                    <span class="right">편의시설</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.2</span>
                                    <div id="bar3" class="barfiller">
                                        <span class="fill" data-percentage="80"></span>
                                    </div>
                                    <span class="right">접근성</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.8</span>
                                    <div id="bar4" class="barfiller">
                                        <span class="fill" data-percentage="80"></span>
                                    </div>
                                    <span class="right">지형</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.0</span>
                                    <div id="bar5" class="barfiller">
                                        <span class="fill" data-percentage="85"></span>
                                    </div>
                                    <span class="right">인터넷</span>
                                </div>
                            </div>
                        </div>
                        <ul class="listing__details__comment ul_line">
                            <h4>리뷰</h4>
                            <li>
                                <div class="listing__details__comment__item">
                                    <div class="listing__details__comment__item__pic">
                                        <img src="https://postfiles.pstatic.net/MjAxODA1MzFfNTUg/MDAxNTI3NzE4ODQyNTQx.MuY4zkhAAP6FvTcjK30FvFu45Q5inuSPLtDM4IHgByAg.0oWFI5ewAqk_XNYmUo_xNDn0JS0ifsiX9SEEWqaBuCAg.JPEG.wellduo33/IMG_8548.jpg?type=w580" alt="">
                                    </div>
                                    <div class="listing__details__comment__item__text">
                                        <div class="listing__details__comment__item__rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <span>March 22, 2023</span>
                                        <h5>만찢 은우</h5>
                                        <p>여기에서 촬영했는데 정말 좋은것 같아요 ^^ 우리 시연이 잘자요~~~</p>
                                        <ul class="ul_line">
                                            <li><i class="fa fa-hand-o-right"></i> 좋아요</li>
                                            <li><i class="fa fa-share-square-o"></i> 댓글</li>
                                            <br>
                                                                                   
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="listing__details__comment__item">
                                    <div class="listing__details__comment__item__pic">
                                        <img src="https://cdn.mhnse.com/news/photo/202211/155987_150403_1244.jpg" alt="">
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
                                        <h5>윈터</h5>
                                        <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                        <ul class="ul_line">
                                            <li><i class="fa fa-hand-o-right"></i> 좋아요</li>
                                            <li><i class="fa fa-share-square-o"></i> 댓글</li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="listing__details__comment__item">
                                    <div class="listing__details__comment__item__pic">
                                        <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
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
                                        <h5>주지훈</h5>
                                        <div>
                                            <p>코딩하러 왔다갑니다 조용하고 바람이 시원해서 좋아요!</p>
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
                            <h4>리뷰 작성</h4>
                            <form action="#">
                                <textarea placeholder="Review"></textarea>
                                <button type="submit" class="site-btn">리뷰등록</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="listing__sidebar">
                        <div class="listing__sidebar__contact">
                            <div class="listing__sidebar__contact__map">
                                <div id="map" style="width: 100%; height: 100%;position: absolute; "></div>
                                <!-- <iframe id="map"
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24168.833995532765!2d-74.79633710628465!3d40.78172222265886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c384de7a5300b9%3A0x8afc61979217d49d!2sLong%20Valley%2C%20NJ%2007853%2C%20USA!5e0!3m2!1sen!2sbd!4v1586852528126!5m2!1sen!2sbd"
                                    height="200" style="border:0;" allowfullscreen="" aria-hidden="false"
                                    tabindex="0"></iframe> -->
                                <img src="img/listing/details/map-icon.png" alt="">
                            </div>
                            <div class="listing__sidebar__contact__text">
                                <h4>지도정보</h4>
                                <ul>
                                    <li><span class="icon_pin_alt"></span> 강원도 양양군 현남면 인구중앙길 88</li>
                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                    <li><span class="icon_mail_alt"></span> Info.colorlib@gmail.com</li>
                                    <li><span class="icon_globe-2"></span> https://colorlib.com</li>
                                </ul>
                                <!-- <div class="listing__sidebar__contact__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="google"><i class="fa fa-google"></i></a>
                                </div> -->
                            </div>
                        </div>
                        <div class="listing__sidebar__working__hours">
                            <h4>Working Hours</h4>
                            <ul>
                                <li>Monday <span>09:00 AM - 20:00 PM</span></li>
                                <li>Tuesday <span>09:00 AM - 20:00 PM</span></li>
                                <li>Wednesday <span>09:00 AM - 20:00 PM</span></li>
                                <li>Thursday <span>09:00 AM - 20:00 PM</span></li>
                                <li>Friday <span class="opening">Opening</span></li>
                                <li>Saturday <span>09:00 AM - 20:00 PM</span></li>
                                <li>Saturday <span class="closed">Closed</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Listing Details Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Challenging the way things have always been done can lead to creative new options that reward
                            you.</p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>Call Us:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Email:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>Fax:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6">
                    <div class="footer__widget">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">How it work</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">How it Work</a></li>
                            <li><a href="#">Advantages</a></li>
                            <li><a href="#">Direo App</a></li>
                            <li><a href="#">Packages</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Cookie Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
     <!-- 지도 api -->
    
    <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->


<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1680485346120",
		"key" : "2eawx",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
     <script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=7a3a6cf6ed29297d31daae406ea451aa"></script>
    <script>
        
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(37.52948338432969, 126.96441932015492), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(addressDetail, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});  
    </script>
</body>

</html>