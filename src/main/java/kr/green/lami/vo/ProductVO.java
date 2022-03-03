package kr.green.lami.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	private int pro_id;
	private String pro_details;
	private String pro_name;
	private int pro_status;
	private int pro_price;
	private int pro_count;
	private int pro_box_count;
	private Date pro_created_date;
	private Date pro_modified_date;

}
