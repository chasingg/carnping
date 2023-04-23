<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carnping | 회원가입</title>
<script>
    
    // 공백 사용 못 하게
    function noSpaceForm(obj) {
        var str_space = /[\s]/g; // 공백 체크
        if (str_space.test(obj.value) || obj.value.trim() === "") { // 공백 체크 및 입력값이 빈 문자열인지 확인
            alert("해당 항목에는 공백을 사용할 수 없습니다.\n\n공백 제거됩니다.");
            obj.focus();
            obj.value = obj.value.replace(/\s+/g, ''); // 공백 제거
            return false;
        }
    }


</script>
<style>

        h2, h3{
            font-family: unset;
        }

        
        *{
            font-family: 'Jal_Onuel';
            font-weight: 200;
            letter-spacing: 0.1em!important;
        }
		.progressBar{
            position: absolute;
            top: 0;
            left: 20px;
            width: 20%;
            height: 4px;
            background: #0ca678;
            -webkit-transition: width 0.2s;
            transition: width 0.2s;
            z-index: 1;
        }
        .agreement{
            position: relative;
            -webkit-flex: 1 0 100%;
            -ms-flex: 1 0 100%;
            flex: 1 0 100%;
            padding-top: 18px;
        }

        .title{
            margin-top:10px;
            margin-left:22px;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: 500;
            line-height: 28px;
            letter-spacing: unset;
            white-space: pre-wrap;
        }

        .agreeAll{
            padding: 22px 0;
            margin: 0px 35px 15px 35px;
            border-bottom: 1px solid #0ca678;
            letter-spacing: unset;
        }
        
        label.checkLabel:before{
            content: "\f058";
            color: grey;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 25px;
            vertical-align: middle;
        }

        input#all:checked + label.checkLabel:before {
            content: "\f058";
            color:#0ca678;
        }

        .checkLabelDesc{
            padding-left: 10px;
            cursor: pointer;
        }

        label.check:before{
            content: "\f00c";
            color: grey;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 17px;
        }

        input.check:checked + label.check:before{
            content: "\f00c";
            color: #0ca678;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 17px;
        }
        input, a, p, span{
            letter-spacing: unset;
        }


        .detail{
            margin-left: 7px;
            line-height: 20px;
            border-radius: 25px;
            border: 1px solid #0ca678 ;
            padding: 2px 10px 0px 10px;
            background-color: #0ca67873;
            color:white;
            font-size: 13px;
        }

        .joinBtn{
            border-radius: 50px;
            padding: 10px 100px;
            background-color: #0ca678;
            color:white;
        }

        .emailBtn{
            border-radius: 50px;
            padding: 10px 20px;
            background-color: #0ca678;

            color:white;
        }

        #emailBtn{
            font-size: 14px;
        }

        button{
            border-color: #0ca678;
        }
        button:disabled{
            
            color:#74E7BF;
        }

        #resendCode{
            color:gray;
            
        }
        #resendCode:hover{
            color: #0ca678;
            
        }

        input::placeholder{
            color:lightgrey;
        }
        
        #wrapper{
            background-color:#74E7BF;
            height: 100%;
            width: 100%;
            letter-spacing: 0.08em;
        }

        #wrapper>*{
            letter-spacing: unset;
        }

        #joinWrapper{
            background-color:  rgba(255, 240, 156, 0.7);
            border-radius: 50px;
            max-width: 600px;
            height: 95%;
            margin: auto;
            margin-top: 5px;
        }
        
        .condition{
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            height: 40px;
            font-size: 12px;
            line-height: 20px;
            padding-left: 5px;
        }

        .pwdCondition{
            position: relative;
            padding-right: 28px;
            color: rgb(196, 196, 196);
        }

        .pwdCondition::after{
            position: absolute;
            top: 2px;
            right: 10px;
            width: 10px;
            height: 6px;
            border-bottom: 1px solid rgb(196, 196, 196);
            border-left: 1px solid rgb(196, 196, 196);
            border-top-color: rgb(196, 196, 196);
            border-right-color: rgb(196, 196, 196);
            transform: rotate(-45deg);
            content: "";
            box-sizing: content-box;
        }

        
        .pwdCondition.valid {
            color: #0ca678;
        }

        .pwdCondition.valid::after {
            border-bottom: 1px solid #0ca678;
            border-left: 1px solid #0ca678;
            border-top-color: #0ca678;
            border-right-color: #0ca678;
        }

</style>


</head>
<body>
<!-- Header -->
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapper" style="padding-top: 122.5px; position:relative;" >
        <div id="joinWrapper" >
            <img src="img/logo_login_1.png" width="125px" style="display:block; margin:auto; padding-top: 25px;" alt="">
            <h2 style="margin: 25px 0px 60px 0px; text-align: center; letter-spacing: unset; font-size:28px;">간편 가입</h2>
            
            <form action="insert.me" name="agreement" id="enrollForm">
                
                <div class="agreement">
                    
                    <i step="1" class="progressBar"></i>
                    <h3 class="title" id="title">Carnping 서비스 이용약관에 동의해주세요.</h3>
                    
                    <div class="agreeAll">
                        <div id="idForm" style="display:none;">
                            <input type="text" id="idInput" placeholder="아이디 입력" style="width: 100%;
                                height: 50px;
                                padding: 10px;
                                border: 1px solid lightblue;" name="userId" required>
                            <p class="idCondition" style="visibility: hidden; padding: 5px 0px 0px 5px; color: orangered">5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</p>

                        </div>
                        <div id="pwdForm" style="display:none;">
                            <input type="password" id="pwdInput" name="password" placeholder="비밀번호 입력" autocapitalize="none" style="width: 100%;
                            height: 50px;
                            padding: 10px;
                            border: 1px solid lightblue;" >
                            <p class="condition">
                                <span class="pwdCondition" id="pwdUpperCase">대소문자</span>
                                <span class="pwdCondition" id="pwdNumber">숫자</span>
                                <span class="pwdCondition" id="pwdSpecialChar">특수문자</span>
                                <span class="pwdCondition" id="pwdLength">8-20자 이내</span>
                            </p>
                            <input type="password" id="confirmPwdInput" name="checkPwd" placeholder="비밀번호 확인" style="width: 100%;
                            height: 50px;
                            padding: 10px;
                            border: 1px solid lightblue;">
                            <p class="condition">
                                <span class="pwdCondition" id="pwdConfirm">비밀번호 일치</span>
                            </p>
                        </div>
                        <span class="agreeSpan">
                            <input type="checkbox" id="all" name="all">
                            <label class="checkLabel" for="all"></label>
                            <label class="checkLabelDesc" style="padding-left: 5px;" for="all" title="all">
                                모두 동의 (선택 정보 포함)
                            </label>
                        </span>
                    </div>
                    <ul class="agreeDetail" style="margin: 0px 40px 30px 40px;">
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="age" name="age">
                                <label class="check" for="age"></label>
                                <label class="checkLabelDesc" for="age" title="age">
                                    [필수]<!-- --> <!-- -->만 14세 이상입니다
                                </label>
                            </span>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="term" name="term">
                                <label class="check" for="term"></label>
                                <label class="checkLabelDesc" for="term" title="term">
                                    [필수]<!-- --> <!-- -->이용약관 동의
                                </label>
                            </span>
                            <button class="detail" type="button">
                                보기
                            </button>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="privacy" name="privacy">
                                <label class="check" for="privacy"></label>
                                <label class="checkLabelDesc" for="privacy" title="privacy">
                                    [필수]<!-- --> <!-- -->개인정보 수집 및 이용 동의
                                </label>
                            </span>
                            <button class="detail" type="button">
                                보기
                            </button>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="marketing" name="marketing">
                                <label class="check" for="marketing"></label>
                                <label class="checkLabelDesc" for="marketing" title="marketing">
                                    [선택]<!-- --> <!-- -->광고성 정보 수신 및 마케팅 활용 동의
                                </label>
                            </span>
                            <button class="detail" type="button" data-toggle="modal" data-target="#marketingModal" >보기</button>
                        </div>
                    </ul>
                    <div align="center" id="emailDiv">
                        <input type="email" id="emailInput" placeholder="이메일 입력" name="email" readonly required
                        onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"  
                        style="width: 60%;
                        border-radius:50px;
                        height: 50px;
                        padding: 10px 10px 10px 20px;
                        border: 1px solid lightblue;" >
                        <button class="emailBtn" id="emailBtn" type="button" data-toggle="modal" 
                            data-target="#emailModal"  disabled>이메일 인증
                        </button>
                        <p class="emailCondition" 
                        style="visibility: hidden;
                                padding-left: 65px;
                                text-align: left;
                                color: orangered;
                                padding-top: 5px;"></p>
                    </div>
                    <div class="join" id="agreeBtnDiv" align="center" style="margin-top:60px;" >
                        <button class="joinBtn" id="agreeBtn" type="button" disabled onclick="agreementCheck();">동의하고 가입하기</button>
                    </div>
                    <div class="join" id="idNextBtnDiv" align="center" style="margin-top:60px; display:none;">
                        <button class="joinBtn" id="idNextBtn" type="button" disabled onclick="idConfirmed();">다음</button>
                    </div>
                    <div class="join" id="PwdNextBtnDiv" align="center" style="margin-top:60px; display:none;" >
                        <button class="joinBtn" id="nextBtn" type="button" disabled onclick="pwdConfirmed();">다음</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

    
              



    <!-- The Modal -->
    <div class="modal" id="marketingModal">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 마케팅 정보 수신 및 활용 동의</h4>
                    <button type="button"  class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <p>
                        카앤핑에서 제공하는 이벤트 및 혜택 등 다양한 정보를 문자메시지, 이메일, 앱 푸시 알림 등으로 받아보실 수 있습니다. 마케팅 정보 수신 및 활용 동의 여부와 관계없이 회원가입 및 서비스를 이용하실 수 있습니다. 또한 서비스의 중요 안내사항 및 주문/배송에 대한 정보는 마케팅 정보 수신 동의 여부와 관계없이 발송됩니다.

                        1. 수집·이용목적
                        마케팅 및 분석
                        프로모션
                        2. 수집·이용항목
                        회원 정보(이름, 휴대폰 번호, 이메일, 성별, 생년월일, 회원등급, 가입일시)
                        쇼핑 및 서비스 이용 정보(장바구니의 상품, 구매일시, 배송지역)
                        수집∙이용항목은 마케팅 및 분석, 프로모션의 목적에 따라 달라질 수 있으며 수집 시점에 안내 후 동의여부를 별도 확인함
                        3. 보유 및 이용기간
                        정보 삭제 또는 이용 정지 요청 및 회원탈퇴 시 즉시 삭제
                        4. 마케팅 활용 정보 수집 방법
                        희망자에 한해 직접 입력
                    </p>
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
        
            </div>
        </div>
  </div>

  <div class="modal" id="emailModal">
    <div class="modal-dialog">
        <div class="modal-content">
    
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 인증 코드 </h4>
            <button type="button" id="modalClose" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body">
                <div>
                    <span id="modalEmail" style="padding-left: 5px;letter-spacing:unset; font-size:15px;"></span>
                    <span style="color:gray; font-size:15px;">으로 인증코드를 발송하였습니다. </span>
                    <p style="font-size:15px; padding-left: 5px;">메일함을 확인해주세요.</p>
                </div>
                <div align="center" style="margin-bottom: 10px">
                    <input type="text" id="emailVerify" placeholder="인증 코드 입력" 
                    style="width: 60%;
                    height: 50px;
                    padding: 10px;
                    margin-right: 15px;
                    border: 1px solid lightblue;" name="userId" 
                    onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required>
                    <span class="timer"
                    style="    position: absolute;
                    top: 96px;
                    right: 215px;
                    font-size: 14px;
                    color: orangered;">12:30</span>
                    <button class="emailBtn" type="button" onclick="verifyCode();">인증 코드 확인</button>
                </div>
                
                <span class="resendInfo" style="color:grey; padding-left: 5px; font-size:13px;">인증코드를 받지 못하셨나요?</span>
                <a id="resendCode" href="#" onclick="resend(); return false;" 
                style="
                margin-top:3px;
                font-size:13px;
                position: absolute;
                cursor: pointer;
                right: 45px;">[인증코드 재발송]</a>
            </div>

    
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" onclick="verifiedEmail();" id="verifySubmit"style="background-color: #0ca678; border-color: #0ca678;" class="btn btn-danger" data-dismiss="modal" disabled>확인</button>
            </div>
    
        </div>
    </div>
</div>

<script>


    $(function(){
        var agreeValid1 = false;
        var agreeValid2 = false;
        var agreeValid3 = false;

        $('#all').on('change', function(){
            if($(this).is(':checked')){
                $('.check').prop('checked', true);
                agreeValid1 = true;
                agreeValid2 = true;
                agreeValid3 = true;
            } else {
                $('.check').prop('checked', false);
                agreeValid1 = false;
                agreeValid2 = false;
                agreeValid3 = false;
            }
            checkAgreeValid();
        });

        $('#age').on('change', function(){
            if($(this).is(':checked')){
            agreeValid1 = true;
        } else {
            agreeValid1 = false;
        }
            checkAgreeValid();
        });


        $('#term').on('change', function(){
            if($(this).is(':checked')){
            agreeValid2 = true;
        } else {
            agreeValid2 = false;
        }
            checkAgreeValid();
        });

        $('#privacy').on('change', function(){
            if($(this).is(':checked')){
            agreeValid3 = true;
        } else {
            agreeValid3 = false;
        }
            checkAgreeValid();
        });


        function checkAgreeValid() {
            if(agreeValid1 && agreeValid2 && agreeValid3) {
                $('#emailInput').prop('readonly', false);
            } else {
                $('#emailInput').prop('readonly', true);
            }
        }

        $('.emailBtn').on('click', function(){
            $('#modalEmail').text($('#emailInput').val());
        })

    });

    function emailCheck(email) {
        const $idInput = $("#enrollForm input[name=email]")
        return $.ajax({
            url: "emailCheck.me",
            data: { checkEmail: email },
            
        });
    }

    function validateEmail(email) {
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;
        return emailPattern.test(email);
    }

    $('#emailInput').on('input', function () {
        var email = $(this).val();
        var isValid = validateEmail(email);
        if (isValid) {
            emailCheck(email).done(function(result) {
                if(result === "NNNNY"){
                    $(".emailCondition").text("사용 가능한 이메일 입니다. 본인 인증을 진행해주세요.");
                    $(".emailCondition").css('visibility','visible').css('color','#0ca678');
                    $('.emailBtn').prop('disabled', false);
                } else {
                    $(".emailCondition").text("이미 존재하거나 탈퇴한 회원의 이메일입니다.");
                    $('.emailCondition').css('visibility','visible').css('color','orangered');
                    $('.emailBtn').prop('disabled', true);
                }
            }).fail(function() {
                console.log("이메일 중복체크용 ajax 통신 실패!");
            });
        } else {
            $(".emailCondition").text("올바른 이메일 형식을 입력해주세요.");
            $('.emailCondition').css('visibility','visible').css('color','orangered');;
            $('.emailBtn').prop('disabled', true);
        }
    });

   
    var realCode = "";
    $('#emailBtn').on('click', function(){

        timer_start();
        var email = $("#emailInput").val();//입력이메일
        $.ajax({
            type:"GET",
            url:"mailCheck?email=" + email,
            success:function(result){
                if(result == "error"){
                    alert("이메일 주소가 올바르지 않습니다.");

                } else{
                    realCode = result;
                }
            }
        });
        
    });

    $('#modalClose').on('click', function () {
        timer_stop();
        $(".resendInfo").text("인증코드를 받지 못하셨나요?");
        $(".resendInfo").css("color","grey");

     
    })  

    // 코드 유효성 (유효하면 true, 아니면 false)
    let code_valid = false 
    // 발송 후 지난 초
    let current_time = 0;
    // 유효시간 
    let minutes,seconds;
    let timer_thread;

    function timer_start(){

                    
        // 인증코드 유효성 true
        code_valid = true;
        // 현재 발송 시간 초기화
        current_time = 0
        // 20초
        let count = 150;
        let timer = $('.timer');
        timer.text("02:30");
        // 1초마다 실행
        timer_thread = setInterval(function () {
            
            minutes = parseInt(count / 60, 10);
            seconds = parseInt(count % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;


            timer.text(minutes + ":" + seconds);

            // alert(minutes + ":" + seconds);
            
            // 타이머 끝
            if (--count < 0) {
                timer_stop();
                timer.text("시간초과");
                // code msg 보임
                code_msg.style.display = "block";
                // code msg "인증코드가 만료되었습니다."
                code_msg.textContent = "인증코드가 만료되었습니다.";
                // 코드 색상 비정상
                code_msg.style.color = msg_err_color;
            }

            current_time++

        }, 1000);

    } 

    // 타이머 종료
    function timer_stop(){
        // 타이머 종료
        clearInterval(timer_thread)
        // 유효시간 만료
        code_valid = false
    }





    // 인증코드가 유효하면 true, 만료되었다면 false 반환
    function iscodeValid(){

        return code_valid;

    }

    // 인증코드 발송 후 10초가 지났는가? 지났으면 true, 안지났으면 false
    function isRerequest(){

        return  current_time>=10?true:false;

    }

    function verifyCode(){

        // 타이머 시간 초과 확인
        if(iscodeValid()){
            let codeInput = $("#emailVerify").val();
            // 인증코드 일치성 검사 
            // 통과시
            if(realCode == codeInput){
                // code msg "이메일 인증 성공!"
                $(".resendInfo").text("본인 인증 되었습니다!");
                $(".resendInfo").css("color","#0ca678");
                $("#verifySubmit").prop('disabled',false);

            }
            else{
                // 미통과
                
                $(".resendInfo").text("인증 코드가 일치하지 않습니다.");
                $(".resendInfo").css("color","orangered");
            }
        };
        };

    // 인증코드 재발송 버튼 클릭할 때
    function resend(){
         // 인증코드 발송 후 10초가 지났는지 확인
         if(isRerequest()){
                    // 인증코드 재발송
                    var email = $("#emailInput").val();//입력이메일
                    $.ajax({
                        type:"GET",
                        url:"mailCheck?email=" + email
                    });

                    // code msg 인증코드 발송 성공
                    $(".resendInfo").text("인증코드 재발송 성공");
                    $(".resendInfo").css("color","#0ca678");
   

                    // 타이머 리셋
                    timer_stop()
                    timer_start()
                }
                else{
                    // code msg 인증코드 발송 거부
                    $(".resendInfo").text( "인증코드 발송 후 10초 뒤부터 재발송 가능합니다.");
                    $(".resendInfo").css("color","orangered");
                }
    }



    // 인증코드 입력창 포커스 잃을 때
    $("#emailVerify").on("blur", function(){


        //  인증코드가 만료되었는지 확인
        if(!iscodeValid()){
            // code 입력창 테두리 빨간색으로 변경
            $(".resendInfo").text( "인증코드가 만료되었습니다. 인증코드를 재발송하세요.");
            $(".resendInfo").css("color","orangered");

        }



    });

    function verifiedEmail(){
        $("#emailInput").attr("readonly",true);
        $("#agreeBtn").prop("disabled", false);
    }


    function agreementCheck(){

        const $marketingInput = $("#enrollForm input[name=marketing]");
        const $emailInput = $("#enrollForm input[name=email]");

        $.ajax({
           url : "agree.me",
           data : {
            marketingAgree:$marketingInput.val(),
            email:$emailInput.val()
            },
           success : function(){
            $("#title").text("로그인에 사용할 아이디를 입력해주세요.");
            $("#idForm").show();
            $(".agreeSpan").hide();
            $(".agreeDetail").hide();
            $("#agreeBtnDiv").hide();
            $("#emailDiv").hide();
            $("#idNextBtnDiv").show();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }
    
    function idCheck(userId) {
        const $idInput = $("#enrollForm input[name=userId]")
        return $.ajax({
            url: "idCheck.me",
            data: { checkId: userId },
        });
    }

    function validateId(userId) {
        var idPattern = /^[a-z0-9_-]{5,20}$/;
        return idPattern.test(userId);
    }

    $('#idInput').on('input', function () {
        var userId = $(this).val();
        var isValid = validateId(userId);
        if (isValid) {
            idCheck(userId).done(function(result) {
                if(result === "NNNNY"){
                    $(".idCondition").text("사용 가능한 아이디 입니다.");

                    $(".idCondition").css('visibility','visible').css('color','#0ca678');
                    $('#idNextBtn').prop('disabled', false);
                } else {
                    $(".idCondition").text("이미 존재하거나 탈퇴한 회원의 아이디입니다.");
                    $('.idCondition').css('visibility','visible').css('color','orangered');
                    $('#idNextBtn').prop('disabled', true);
                }
            }).fail(function() {
                console.log("아이디 중복체크용 ajax 통신 실패!");
            });
        } else {
            $(".idCondition").text("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
            $('.idCondition').css('visibility','visible').css('color','orangered');;
            $('#idNextBtn').prop('disabled', true);
        }
    });


    function idConfirmed(){

        const $confirmedIdInput = $("#enrollForm input[name=userId]");
        console.log($confirmedIdInput.val());


        $.ajax({
        url : "idConfirmed.me",
        data : {
            memId:$confirmedIdInput.val()
            },
        success : function(){
            $("#title").text("로그인에 사용할 비밀번호를 입력해주세요.");
            $("#idForm").hide();
            $("#idNextBtnDiv").hide();
            $("#pwdForm").show();
            $("#PwdNextBtnDiv").show();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }


    function pwdConfirmed(){

        const $confirmedPwdInput = $("#enrollForm input[name=password]");

        $.ajax({
        url : "pwdConfirmed.me",
        data : {
            memPwd:$confirmedPwdInput.val()
            },
        success : function(){
            $("#title").text("회원 정보를 입력해주세요.");
            $("#pwdForm").hide();
            $("#PwdNextBtnDiv").hide();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }

    
        
        
        $(function(){
            $("#pwdInput, #confirmPwdInput").on("input", function() {
                var password = $("#pwdInput").val();
                var upperCaseRegex = /[A-Z]/;
                var numberRegex = /[0-9]/;
                var specialCharRegex = /[!@#$%^&*(),.?":{}|<>]/;
                var confirmPassword = $("#confirmPwdInput").val();
                var valid = true;

                if (!upperCaseRegex.test(password)) {
                    $('#pwdUpperCase').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdUpperCase').addClass('valid');
                }

                if (!numberRegex.test(password)) {
                    $('#pwdNumber').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdNumber').addClass('valid');
                }

                if (!specialCharRegex.test(password)) {
                    $('#pwdSpecialChar').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdSpecialChar').addClass('valid');
                }

                if (password.length < 8 || password.length > 20) {
                    $('#pwdLength').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdLength').addClass('valid');
                }

                if (password === confirmPassword && confirmPassword.length > 1) {
                    $('#pwdConfirm').addClass('valid');
                } else {
                    $('#pwdConfirm').removeClass('valid'); 
                    valid = false;
                }

                if (valid) {
                    $('#nextBtn').prop('disabled', false);
                } else {
                    $('#nextBtn').prop('disabled', true);
                }
                
            });
        });

        </script>
	
<!-- Footer -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>