package kr.green.lami.pagenation;

import lombok.Data;

@Data
public class Criteria {

	        //현재 페이지
			private int page; 
			//한 페이지 당 컨텐츠 갯수
			private int perPageNum;
			private String search;
			private String type;
			//Criteria 디폴트 생성자 : 현재 페이지를 1페이지로, 한 페이지에 5개의 컨텐츠
			public Criteria() {
				this.page = 1;
				this.perPageNum = 5;
				this.type="general";
				this.search ="";
			}
			public Criteria(int page, int perPageNum) {
				this.page = page;
				this.perPageNum = perPageNum;
				this.type="general";
				this.search ="";
			}
			
			/* 쿼리문에서 limit에 사용되는 인덱스를 계산하는 getter */
			public int getPageStart() {
				return (this.page -1) * perPageNum;
			}
			public String getTypeTitle() {
				if(type != null && type.equals("notice"))
					return "notice";
				return "Q&A";
			}
			
}
