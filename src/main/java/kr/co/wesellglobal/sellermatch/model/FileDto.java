package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

/**
 * 업로드 된 파일의 정보를 저장하기 위한 JavaBeans
 * - 이 클래스의 객체가 업로드 된 파일의 수 만큼 생성되어 List 형태로 보관된다.
 */
@Data
public class FileDto {
	private int fileIdx;			// 자동번호
	private String fieldName;		// <input type="file">의 name속성
	private String orginName;		// 원본 파일 이름
	private String contentType;		// 파일의 형식
	private long fileSize;			// 파일의 용량
	private String filePath;		// 서버상의 파일 경로
	private String thumbnailPath;	// 썸네일 이미지 경로
	//private String fileUrl;			// 서버상의 원본 이미지 URL
	//private String thumbnailUrl;	// 썸네일 이미지 URL
	private String fileRegDate;		// 등록날짜
	private String projId;
	private String profileId;
	private String projThumbnail;	// 썸네일 여부, (0 - x, 1 - 프로젝트 등록시 썸네일 이미지)
}
