package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.green.lami.dao.AdminDAO;
import kr.green.lami.utils.UploadFileUtils;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;

@Service
public class AdminServiceImp implements AdminService {
	
	@Autowired
	AdminDAO adminDao;
	
	String uploadPath = "D:\\JAVA_ashu\\upload";
	
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
								tmpFile.getOriginalFilename(), 
								tmpFile.getBytes());
						ImageVO image 
							= new ImageVO(tmpFile.getOriginalFilename(),path,pro_id);
						System.out.println(image);
						adminDao.uploadImage(image);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		
	}

}
