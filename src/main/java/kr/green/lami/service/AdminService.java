package kr.green.lami.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;

public interface AdminService {

	void productRegister(ProductVO product, MemberVO user, List<MultipartFile> files2);

	List<CategoryVO> getCategories();

	CategoryVO getCategory(int pro_cat_id);

	void addCategory(String categoryName, CategoryVO category);

}
