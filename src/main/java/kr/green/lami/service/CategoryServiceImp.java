package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CategoryDAO;
import kr.green.lami.dao.MemberDAO;
import kr.green.lami.vo.MainCategoryVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

@Service
public class CategoryServiceImp implements CategoryService {
	
	@Autowired
	CategoryDAO categoryDao;
	
	@Override
	public List<MainCategoryVO> selectMainCategory() {
		return categoryDao.selectMainCategory();
	}

	@Override
	public List<MiddleCategoryVO> selectMiddleCategory(Integer mid_ma_cat_id) {
		if(mid_ma_cat_id == null || mid_ma_cat_id <= 0)
			return null;
		return categoryDao.selectMiddleCategory(mid_ma_cat_id);
	}

	@Override
	public List<SmallCategoryVO> selectSmallCategory(Integer sm_mid_cat_id) {
		if(sm_mid_cat_id == null || sm_mid_cat_id <= 0)
		return null;
		return categoryDao.selectSmallCategory(sm_mid_cat_id);
	}

	@Override
	public List<Small2CategoryVO> selectSmall2Category(Integer sm2_sm_cat_id) {
		if(sm2_sm_cat_id == null || sm2_sm_cat_id <= 0)
		return null;
		return categoryDao.selectSmall2Category(sm2_sm_cat_id);
	}

	@Override
	public List<Small3CategoryVO> selectSmall3Category(Integer sm3_sm2_cat_id) {
		if(sm3_sm2_cat_id == null || sm3_sm2_cat_id <= 0)
		return null;
		return categoryDao.selectSmall3Category(sm3_sm2_cat_id);
	}


}
