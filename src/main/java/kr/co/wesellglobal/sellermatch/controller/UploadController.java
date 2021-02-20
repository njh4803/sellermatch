package kr.co.wesellglobal.sellermatch.controller;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@GetMapping(value = "upload", produces = {"image/jpg", "image/jpeg" })
	public @ResponseBody byte[] show(String name) throws Exception {
		
		//InputStream in = new FileInputStream("/usr/local/img" + name);
		InputStream in = new FileInputStream("C:/wesell/workspace/upload" + name);
		// InputStream in = new FileInputStream("C:\\Users\\YW\\img/" + name);
		// OutputStream out = new ByteArrayOutputStream();

		return IOUtils.toByteArray(in);
	}

	
}
