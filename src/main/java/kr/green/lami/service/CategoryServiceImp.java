package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CategoryDAO;
import kr.green.lami.dao.MemberDAO;
import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

@Service
public class CategoryServiceImp implements CategoryService {
	
	@Autowired
	CategoryDAO categoryDao;

	@Override
	public List<CategoryVO> selectCategory(CategoryVO ca) {
		if(ca == null || ca.getCat_ori_num() < 0)
			return null;
		return categoryDao.selectCategory(ca);
	}
	
	


}
