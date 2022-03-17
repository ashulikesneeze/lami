package kr.green.lami.vo;

import lombok.Data;

@Data
public class CategoryVO {
	
	private int cat_id;
	private String cat_name;
	private int cat_ori_num;
	private int cat_depth;
	private String cat_path;

}
