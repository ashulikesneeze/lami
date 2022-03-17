package kr.green.lami.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.ProductDAO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDAO productDao;
	
	@Override
	public void initImage(String dic, String filename) {
		Integer cat_id = productDao.selectCategoryByPath(dic.substring(0,dic.length()-1));
		if(cat_id == null)
			return;
		ProductVO productVo = productDao.selectProduct(cat_id);
		if(productVo == null) {
			productVo = new ProductVO(dic, dic, cat_id);
			productDao.insertProduct(productVo);
		}
		
		ImageVO imgVo = productDao.selectImage(filename, productVo.getPro_id());
		if(imgVo != null)
			return;
		String []img = {".tif", ".pjp", ".xbm", ".jxl", ".svgz", ".jpg", ".jpeg", ".ico", ".tiff", ".gif", ".svg", ".jfif", ".webp", ".png", ".bmp", ".pjpeg", ".avif"};
		String []video = {".ogm", ".wmv", ".mpg", ".webm", ".ogv", ".mov", ".asx", ".mpeg", ".mp4", ".m4v", ".avi"};
		
		List<String> imgList = Arrays.asList(img);
		List<String> videoList = Arrays.asList(video);
		String ext = filename.substring(filename.lastIndexOf('.'));
		if(imgList.contains(ext)) {
			
			productDao.insertImage(new ImageVO(filename,  productVo.getPro_id(), 0));
		}else if(videoList.contains(ext)) {
			productDao.insertImage(new ImageVO(filename,  productVo.getPro_id(), 1));
		}
		
	}

}
