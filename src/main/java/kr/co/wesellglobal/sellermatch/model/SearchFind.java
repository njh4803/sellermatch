package kr.co.wesellglobal.sellermatch.model;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class SearchFind extends Criteria {
	
	private String projNation[];
	private String projIndus[];
	
	
	public String[] getProjNation() {
		return projNation;
	}
	public void setProjNation(String[] projNation) {
		this.projNation = projNation;
	}
	public String[] getProjIndus() {
		return projIndus;
	}
	public void setProjIndus(String[] projIndus) {
		this.projIndus = projIndus;
	}
	@Override
	public String toString() {
		return "SearchFind [projNation=" + Arrays.toString(projNation) + ", projIndus=" + Arrays.toString(projIndus)
				+ "]";
	}
	
	
	
	
	
	
	
}
