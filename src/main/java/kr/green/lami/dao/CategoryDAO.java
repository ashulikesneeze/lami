package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

public interface CategoryDAO {
	
	
	List<CategoryVO> selectCategory(@Param("ca")CategoryVO ca);

}
