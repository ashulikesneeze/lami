package kr.green.lami.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AnswerVO {

	private int an_id;
	private String an_contents;
	private Date an_created_date;
	private Date an_modified_date;
	private String an_del;
	private Date an_del_date;
	private String an_me_id;
	private int an_qa_id; 

}
