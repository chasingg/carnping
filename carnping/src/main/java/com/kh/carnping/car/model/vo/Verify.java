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
public class Verify {
	private String verifyNo;		// 차박정보 검수번호
	private String verifyName; 		// 차박정보 이름
	private String verifyText;		// 차박정보 등록이유
	private String verifyContent;	// 차박정보 내용
	private String verifyNotice; 	// 차박정보 유의사항
	private String verifyLttd; 		// 위도
	private String verifyHrdns; 	// 경도
	private String verifyStatus;	// 검수상태 Y,N
	private String verifyAddress;	// 차박정보 주소
	private String verifyFacilities;// 편의시설
	private String verifyDays; 		// 영업일
	private String verifyTag; 		// 태그
	private String verifyModified;		// 검수 수정일
	private String verifyRgstrDate;		// 검수 요청일
	private String verifyReason;	// 사유
	private String memNo;			// 회원번호
	
	private String[] verifyFacilitie;// 편의시설
	private String[] verifyDay; 		// 영업일
	private String[] verifyTags; 		// 태그
}
