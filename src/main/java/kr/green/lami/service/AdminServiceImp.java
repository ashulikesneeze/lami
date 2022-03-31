package kr.green.lami.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.green.lami.dao.AdminDAO;
import kr.green.lami.utils.UploadFileUtils;
import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;

@Service
public class AdminServiceImp implements AdminService {
	
	@Autowired
	AdminDAO adminDao;
	
	String uploadPath = "D:/pic/Send Anywhere (2022-02-07 14-30-36)";
	
		@Override
		public void productRegister(ProductVO product, MemberVO user, List<MultipartFile> files2) {
			
			if(product == null || user == null)
				return;
			if(product.getPro_name() == null
					|| product.getPro_name().trim().length() ==0)
				return;
			if(user.getMe_id() == null || user.getMe_id().trim().length() == 0)
				return; 
			adminDao.productRegister(product);
			
			uploadImage(files2, product.getPro_id()); 
			
		}

		private void uploadImage(List<MultipartFile> files2, int pro_id) {
			if(files2 == null || files2.size() == 0)
				return;
			for(MultipartFile tmpFile : files2) {
				if(tmpFile != null && tmpFile.getOriginalFilename().length() != 0) {
					try {
						String path = 
							UploadFileUtils.uploadFile(
								uploadPath, 
								"cat_path"+tmpFile.getOriginalFilename(), 
								tmpFile.getBytes());
						String []img = {".tif", ".pjp", ".xbm", ".jxl", ".svgz", ".jpg", ".jpeg", ".ico", ".tiff", ".gif", ".svg", ".jfif", ".webp", ".png", ".bmp", ".pjpeg", ".avif"};
						String []video = {".ogm", ".wmv", ".mpg", ".webm", ".ogv", ".mov", ".asx", ".mpeg", ".mp4", ".m4v", ".avi"};
						
						List<String> imgList = Arrays.asList(img);
						List<String> videoList = Arrays.asList(video);
						String ext = tmpFile.getOriginalFilename().substring(tmpFile.getOriginalFilename().lastIndexOf('.'));
						
						if(imgList.contains(ext)) {
							System.out.println(0);
							adminDao.uploadImage(new ImageVO(tmpFile.getOriginalFilename(),pro_id, 0));
						}else if(videoList.contains(ext)) {
							System.out.println(1);
							adminDao.uploadImage(new ImageVO(tmpFile.getOriginalFilename(),pro_id, 1));
						}
						
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}

		@Override
		public List<CategoryVO> getCategories() {
			return adminDao.getCategories();	
		}
}
