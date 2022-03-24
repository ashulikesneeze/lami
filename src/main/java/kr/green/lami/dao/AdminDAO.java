package kr.green.lami.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

public interface AdminDAO {

	void productRegister(@Param("product")ProductVO product);
	void uploadImage(@Param("image")ImageVO image);

}
