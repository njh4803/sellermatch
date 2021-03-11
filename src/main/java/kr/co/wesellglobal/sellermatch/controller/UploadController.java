package kr.co.wesellglobal.sellermatch.controller;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import kr.co.wesellglobal.sellermatch.controller.rest.AdminProjectRestController;
import kr.co.wesellglobal.sellermatch.helper.UploadFileUtils;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping
public class UploadController {
	
	@Autowired
	WebHelper webHelper;
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@GetMapping(value = "upload", produces = {"image/jpg", "image/jpeg" })
	public @ResponseBody byte[] show(String name) throws Exception {
		
		InputStream in = new FileInputStream("/usr/local/img" + name);
		/* InputStream in = new FileInputStream("C:/wesell/workspace/upload" + name); */
		// InputStream in = new FileInputStream("C:\\Users\\YW\\img/" + name);
		// OutputStream out = new ByteArrayOutputStream();

		return IOUtils.toByteArray(in);
	}

	@RequestMapping(value = "/admin/project/fileUpload", method = RequestMethod.POST)
	public Map<String, Object> fileUpload(@RequestParam(value = "detailImg", required = false) MultipartFile detailImg){
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		String fName = "";
		
		log.debug("detailImg = " + detailImg);
		ResponseEntity<String> insertFileName;
		try {
			insertFileName = new ResponseEntity<String>(
					UploadFileUtils.uploadFile(uploadPath, detailImg.getOriginalFilename(), detailImg.getBytes()),
					HttpStatus.CREATED);
			fName = insertFileName.getBody();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("fName", fName);
		return webHelper.getJsonData(data);
		
	}
}
