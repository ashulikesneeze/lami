package kr.green.lami.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ImageVO {

	private int img_id;
	private String img_name;
	private int img_pro_id;
	private int img_type;
	private String img_name2;
	public ImageVO(String img_name, int img_pro_id, int img_type) {
		super();
		this.img_name = img_name;
		this.img_pro_id = img_pro_id;
		this.img_type = img_type;
	} 
	
	
}
