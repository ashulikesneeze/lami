package kr.green.lami.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

public interface ProductDAO {

	Integer selectCategoryByPath(@Param("cat_path")String dic);

	void insertImage(@Param("img")ImageVO imageVO);

	ProductVO selectProduct(@Param("cat_id")Integer cat_id);

	void insertProduct(@Param("pro")ProductVO productVo);

	ImageVO selectImage(@Param("img_name")String filename, @Param("pro_id")int pro_id);

	ArrayList<ProductVO> selectMainImage();

	ArrayList<ImageVO> productImages(@Param("pro_id")Integer pro_id);

	ProductVO getProduct(@Param("pro_id")Integer pro_id);
	
	ProductVO getProductByCategory(@Param("pro_cat_id")Integer pro_cat_id);

}
