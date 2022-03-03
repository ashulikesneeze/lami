package kr.green.lami.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int qa_id;
	private int qa_ori_id;
	private String qa_title;
	private String qa_contents;
	private Date qa_modified_date;
	private Date qa_created_date;
	private String qa_type;
	private String qa_me_id;
	private String qa_secret_yn;
	private String qa_del;
	private Date qa_del_date;
	private int qa_pro_id;
	
	public String getQa_created_date_str() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return format.format(qa_created_date); 
	}
	
	public String getQa_modified_date_str() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return format.format(qa_modified_date); 
	}

	public String getTypeTitle() {
		if(qa_type != null && qa_type.equals("notice"))
			return "notice";
		if(qa_type != null && qa_type.equals("qna"))
			return "qna";
		return "Q&A";
	}
	
	public boolean isAccessAuthority(String authority) {
		if(qa_type.equals("general") || qa_type.equals("qna"))
			return true;
		if(qa_type.equals("notice") && 
				(authority.equals("admin") || authority.equals("super")))
			return true;
		return false;
	}

}
