package kr.green.lami.service;

import java.util.ArrayList;

import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

public interface ProductService {

	void initImage(String dic, String filename);

	ArrayList<ProductVO> getProductList();

	ArrayList<ImageVO> getImageList(Integer pro_id);

	ProductVO getProduct(Integer pro_id);

	ProductVO getProductByCategory(Integer pro_cat_id);

}
