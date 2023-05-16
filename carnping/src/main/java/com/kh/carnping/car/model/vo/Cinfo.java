package com.kh.carnping.car.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Cinfo {
	private String cinfoNo; // 차박정보 등록번호
	private String cinfoName; // 차박정보 이름
	private String cinfoContent;// 차박정보 내용
	private String cinfoNotice; // 차박정보 유의사항
	private String cinfoLttd; // 위도
	private String cinfoHrdns; // 경도
	private String cinfoStatus; // 검수상태 Y,N
	private String cinfoAddress;// 차박정보 주소
	private String cinfoFacilities; // 편의시설
	private String cinfoDays; // 영업일
	private String cinfoTag; // 태그
	private double cinfoRating; // 평점
	private int cinfoViews; // 조회수
	private String cinfoModified; // 수정일
	private String cinfoRgstrDate; // 등록알
	private String memNo; // 회원번호
	private String memName;// 회원이름
	private String cinfoImg1; // 차박정보 메인이미지
	private String cinfoImg2; // 차박정보 서브이미지
	private String cinfoImg3; // 차박정보 서브이미지
	private String cinfoImg4; // 차박정보 서브이미지
	private String cinfoImg5; // 차박정보 서브이미지
	private String cinfoImg6; // 차박정보 서브이미지
	private String cinfoImg7; // 차박정보 서브이미지
	private String cinfoImg8; // 차박정보 서브이미지
	private String cinfoImg9; // 차박정보 서브이미지
	private String cinfoImg10; // 차박정보 서브이미지
	private String phone;
}
