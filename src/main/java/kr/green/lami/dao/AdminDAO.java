package kr.green.lami.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

public interface AdminDAO {

	void productRegister(@Param("product")ProductVO product);
	
	void uploadImage(@Param("image")ImageVO image);
	
	List<CategoryVO> getCategories();
	
	String getCategoryPath(@Param("cat_id")int cat_id);
	
	CategoryVO getCategory(int pro_cat_id);
	
	void addCategory(@Param("categoryName")String categoryName, @Param("categoryOriginalNumber")int categoryOriginalNumber, 
			@Param("categoryDepth")int categoryDepth, @Param("categoryPath")String categoryPath);
}
