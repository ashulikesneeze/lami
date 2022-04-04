package kr.green.lami.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductVO {
	
	private int pro_id;
	private String pro_details;
	private String pro_name;
	private int pro_status;
	private int pro_cat_id;
	private String pro_main_img;
	public ProductVO(String pro_details, String pro_name, int pro_cat_id) {
		super();
		this.pro_details = pro_details;
		this.pro_name = pro_name;
		this.pro_cat_id = pro_cat_id;
	}

	
}
