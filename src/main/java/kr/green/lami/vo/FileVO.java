package kr.green.lami.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FileVO {
	
	private int fi_id;
	private String fi_ori_name;
	private String fi_name;
	private int fi_co_qa_id;
	private String fi_del;
	private Date fi_del_date;
	private String fi_table_name;
	
	public FileVO(String fi_ori_name, String fi_name, int fi_co_qa_id, String fi_table_name) {
		this.fi_ori_name = fi_ori_name;
		this.fi_name = fi_name;
		this.fi_co_qa_id = fi_co_qa_id;
		this.fi_table_name = fi_table_name;
	}

}
