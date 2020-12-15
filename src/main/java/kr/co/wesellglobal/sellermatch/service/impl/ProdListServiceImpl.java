package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ProdList;
import kr.co.wesellglobal.sellermatch.service.ProdListService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProdListServiceImpl implements ProdListService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProdList> getProductList(ProdList input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addProduct(ProdList input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("ProdListMapper.insertItem", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		
	}

	@Override
	public ProdList getProduct(ProdList input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editProduct(ProdList input) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
