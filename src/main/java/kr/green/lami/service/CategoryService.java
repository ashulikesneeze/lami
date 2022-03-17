package kr.green.lami.service;

import java.util.List;

import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

public interface CategoryService {
	
	List<CategoryVO> selectCategory(CategoryVO ca);

}
