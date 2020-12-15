package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ProdList;

public interface ProdListService {
	
	public List<ProdList> getProductList(ProdList input) throws Exception;
	
	public void addProduct(ProdList input) throws Exception;
	
	public ProdList getProduct(ProdList input) throws Exception;
	
	public void editProduct(ProdList input) throws Exception;
	
}
