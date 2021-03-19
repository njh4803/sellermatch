package kr.co.wesellglobal.sellermatch.controller;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.UploadFileUtils;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.service.FileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping
public class UploadController {
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	FileService fileService;
	
	/*@Resource(name = "uploadPath")
	private String uploadPath;

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@GetMapping(value = "upload", produces = {"image/jpg", "image/jpeg" })
	public @ResponseBody byte[] show(String name) throws Exception {
		
		InputStream in = new FileInputStream("/usr/local/img" + name);
		// InputStream in = new FileInputStream("C:/wesell/workspace/upload" + name); //
		// InputStream in = new FileInputStream("C:\\Users\\YW\\img/" + name);
		// OutputStream out = new ByteArrayOutputStream();

		return IOUtils.toByteArray(in);
	}*/

	@ResponseBody
	@RequestMapping(value = "/admin/project/fileUpload", method = RequestMethod.POST)
	public Map<String, Object> fileUpload(@RequestParam(value = "detailImg", required = false) MultipartFile detailImg){
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		/*String fName = "";
		
		log.debug("detailImg = " + detailImg);
		ResponseEntity<String> insertFileName;*/
		try {
			/*insertFileName = new ResponseEntity<String>(
					UploadFileUtils.uploadFile(uploadPath, detailImg.getOriginalFilename(), detailImg.getBytes()),
					HttpStatus.CREATED);
			fName = insertFileName.getBody();*/
			
			if (detailImg != null && detailImg.getSize() != 0) {
				item = webHelper.saveMultipartFile(detailImg);
				
				// 썸네일 이미지 생성하기
				if (item != null && item.getContentType().indexOf("image") > -1) {
					//필요한 이미지 사이즈로 썸네일 생성
					String thumbnailPath = null;
					
					try {
						thumbnailPath = webHelper.createThumbnail(item.getFilePath(), 240, 240, true);
					} catch (Exception e) {
						e.printStackTrace();
						return webHelper.getJsonError("썸네일 이미지 생성에 실패했습니다");
					}
					// 썸네일 경로를 URL로 변환
					//String thumbnailUrl = webHelper.getUploadUrl(thumbnailPath);
					// 리턴할 객체에 썸네일 정보 추가
					item.setThumbnailPath(thumbnailPath);
					item.setProjThumbnail("0");
				}
				// 파일 정보를 DB에 저장
				fileService.addFile(item);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("fName", item.getFilePath());
		return webHelper.getJsonData(data);
		
	}
}
