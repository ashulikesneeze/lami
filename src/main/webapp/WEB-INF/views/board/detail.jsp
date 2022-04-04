<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath() %>/resources/js/answer.js"></script>
</head>
<body>
	<h1>${board.typeTitle} Details </h1>
		<div class="form-group">
		  <label>Title</label>
		  <input type="text" class="form-control" value="${board.qa_title}" readonly>
		</div>
		<div class="form-group">
		  <label>Author</label>
		  <input type="text" class="form-control" value="${board.qa_me_id}" readonly>
		</div>
		<div class="form-group">
		  <label>Date</label>
		  <input type="text" class="form-control" value="${board.qa_created_date_str}" readonly>
		</div>
		<div class="form-group">
		  <label>Contents</label>
		  <div class="form-control" style="height: auto; min-height: 400px">${board.qa_contents}</div>
		</div>
		<div class="form-group">
			<label>attachment files</label>
			  <c:forEach items="${fileList}" var="file">
			  	<a class="form-control" href="<%=request.getContextPath()%>/board/download?fileName=${file.fi_name}">${file.fi_ori_name}</a>
			  </c:forEach>
		  </div>
		  <c:if test="${user.me_id == board.qa_me_id }">
			<a href="<%=request.getContextPath()%>/board/modify?qa_id=${board.qa_id}">
				<button class="btn btn-outline-success">수정 modify</button>
			</a>
			<a href="<%=request.getContextPath()%>/board/delete?qa_id=${board.qa_id}">
				<button class="btn btn-outline-success">삭제 delete</button>
			</a>
		</c:if>
		<!-- 현재 보고 있는 게시글이 원본 게시글 -->
		<c:if test="${board.qa_id == board.qa_ori_id && (board.qa_type == 'general')}">
			<a href="<%=request.getContextPath()%>/board/register?qa_ori_id=${board.qa_id}">
				<button class="btn btn-outline-success">답변 answer</button>
			</a>
		</c:if>
		
		<div class="answer-list">	
		</div>
		
		<div class="answer-pagination">	
		</div>
		
		<div class="input-group mb-3 mt-3">
		  <textarea class="form-control co_contents" rows="3"></textarea>
		  <div class="input-group-append">
		    <button class="btn btn-success btn-answer-insert">submit 등록</button>
		  </div>
		</div>
	
		
	<script type="text/javascript">
	var contextPath = '<%=request.getContextPath()%>';
	answerService.setContextPath(contextPath);
	$(function(){
		$('.btn-answer-insert').click(function(){
			var an_me_id = '${user.me_id}';
			if(an_me_id == ''){
				alert('댓글은 로그인한 회원만 작성 가능합니다. only available for logged-in users!');
				return;
			}
			var an_contents = $('textarea.an_contents').val();
			var an_qa_id = '${board.qa_id}';
			var answer = {
					an_me_id    : an_me_id,
					an_contents : an_contents,
					an_qa_id   : an_qa_id
			};
			
			if(an_contents == ''){
				alert('댓글을 입력하세요. plz, insert an answer.');
				return;
			}
			
			answerService.insert(answer, '/answer/insert',insertSuccess);
		});
		
		$(document).on('click', '.answer-pagination .page-item', function(){
			
			if($(this).hasClass('disabled')){
				return;
			}
			
			var page = $(this).data('page');
			//댓글 새로고침
			var listUrl = '/answer/list?page='+page+'&qa_id='+'${board.qa_id}';
			answerService.list(listUrl,listSuccess);
		});
		
		$(document).on('click', '.btn-del-answer',function(){
			var an_id = $(this).data('id');
			var deleteUrl = '/answer/delete?qa_id=' + qa_id;
			answerService.delete(deleteUrl, deleteSuccess);
		});
		
		$(document).on('click', '.btn-mod-answer',function(){
			//댓글 초기화
			answerInit();
			$(this).parent().children('button').hide();
			$(this).siblings(' .qa_contents').hide(); 
			var text = $(this).siblings(' .qa_contents').text(); 
			var textarea = '<textarea class="form-control qa_contents2">'+text+'</textarea>'
			$(this).siblings(' .qa_contents').after(textarea); 
			var qa_id = $(this).data('id');
			var button ='<button class="btn btn-outline-info btn-mod-insert" data-id="'+qa_id+'">change answer 댓글 수정</button>'
			$(this).siblings(' .qa_created_date').after(button);
		});
		
		//댓글 수정 등록 버튼 클릭 이벤트
		$(document).on('click','.btn-mod-insert', function(){
			//댓글 번호
			var qa_id = $(this).data('id');
			//댓글 내용(단, 1개일때만)
			var an_contents = $('.an_contents2').val();
			//댓글 내용(1개이상, 안정적인 코드)
			//var co_contents = $(this).siblings('.co_contents2').val();
			//객체 만들기
			var answer = {
					qa_id : qa_id,
					qa_contents : qa_contents
			}
			console.log();
			answerService.modify(answer,'/answer/modify',modifySuccess);
		}); 
		
		$(document).on('click','.btn-rep-answer',function(){
			answerInit(); 
			var str = '<textarea class="form-control an_contents2" rows="3"></textarea>';
			var buttonStr = '<button class="btn btn-success btn-rep-insert" data-id="'+$(this).data('id')+'">submit 등록</button>';
			$(this).parent().children('button').hide(); 
			$(this).parent().append(str);
			$(this).parent().append(buttonStr);
		});
		
		//배치되었다가 없어지면 on.('click',)
		$(document).on('click','.btn-rep-insert',function(){
			var an_qa_id = '${board.qa_id}';
			var an_contents = $('.an_contents2').val();
			var qa_ori_id = $(this).data('id'); 
			var an_me_id = '${user.me_id}'
			var answer = {
					an_qa_id : an_qa_id,
					an_contents : an_contents,
					qa_ori_num : qa_ori_num,
					an_me_id : an_me_id
			}
			console.log(answer)
			answerService.insert(answer, '/answer/insert',insertSuccess); 
		}); 
		
		
		//화면 로딩 준비가 끝나면 댓글 불러옴
		var listUrl = '/answer/list?page=1&qa_id='+'${board.qa_id}';
		answerService.list(listUrl,listSuccess);
	});
	function modifySuccess(res){
		if(res){
		//현재 선택된 페이지 번호 
		var page = $('.answer-pagination .active').data('page');
		var listUrl = '/answer/list?page='+page+'&qa_id='+'${board.qa_id}';
		answerService.list(listUrl,listSuccess);
		alert('댓글 수정이 완료되었습니다. modified your answer!');
		}else{
			alert('댓글 수정에 실패했습니다. failed to modify your answer!');
		}
	}
	
	function getDateToString(date){
		return "" + 
		date.getFullYear() + "-" +
		(date.getMonth()+1) + "-" +
		date.getDate() + "" +
		date.getHours() + ":" +
		date.getMinutes(); 
	}
	
	function answerInit(){ 
		$(' .answer-box').each(function(){
			$(this).find(' .an_contents2').remove();
			$(this).find(' .btn-mod-insert').remove();
			$(this).find(' .btn-rep-insert').remove();
			$(this).find(' .button').show();
			$(this).find(' .an_contents').show();
		});
	}
	
	function deleteSuccess(res){
		if(res){
			alert('댓글을 삭제했습니다. deleted your answer!')
			var listUrl = '/answer/list?page=1&qa_id='+'${board.qa_id}';
			answerService.list(listUrl,listSuccess);
		}else{
			alert('댓글 삭제에 실패했습니다. failed to delete your answer!')
		}
	}
	
	function listSuccess(res){
		var str = '';
    var me_id = '${user.me_id}';
    if(res.list.length == 0){
    	$('.answer-list').html('');
    	$('.answer-pagination').html('');
    	return;
    }
    for(tmp of res.list){
    	str += createAnswer(tmp, me_id);
    }
    $('.answer-list').html(str);
    
    var paginationStr = createPagenation(res.pm);
    $('.answer-pagination').html(paginationStr);
	}
	function insertSuccess(res){
		if(res){
	   	alert('댓글 등록이 완료 되었습니다. completed!!');
	   	$('.an_contents').val('');
	   	var listUrl = '/answer/list?page=1&qa_id='+'${board.qa_id}';
	   		answerService.list(listUrl,listSuccess);
   	}else{
	   	alert('댓글 등록에 실패 했습니다.failed!!');
   	}
	}
	function createAnswer(answer, me_id){
		var an_created_date = getDateToString(new Date(answer.an_created_date)); 
		var str = '';
		str+=	'<div class="answer-box clearfix">'
		
		if(board.qa_ori_id != board.qa_id){
		str+=		'<div class="float-left" style="width:24px">└</div>'
		str+=		'<div class="float-left" style="width: calc(100% - 24px)">'
		}else{
		str+=		'<div class="float-left" style="width: 100%">'
		}
		str+=			'<div class="an_me_id">'+answer.an_me_id+'</div>'
		str+=			'<div class="an_contents">'+answer.an_contents+'</div>'
		str+=			'<div class="an_created_date">'+an_created_date+'</div>'
		if(board.qa_ori_id == board.qa_id) 
		str+=			'<button class="btn btn-outline-success btn-rep-answer mr-2" data-id="'+answer.an_id+'">답변 answer</button>'
		if(answer.an_me_id == me_id){
		str+=			'<button class="btn btn-outline-dark btn-mod-answer mr-2" data-id="'+answer.an_id+'">수정 modify</button>'
		str+=			'<button class="btn btn-outline-danger btn-del-answer" data-id="'+answer.an_id+'">삭제 delete</button>'
		}
		str+=		'</div>'
		str+=		'<hr class="float-left" style="width:100%">'
		str+=	'</div>'
		return str;
	}
	function createPagenation(pm){
		var str = '';
		var prevDisabled = pm.prev ? '' : 'disabled';
		var nextDisabled = pm.next ? '' : 'disabled';
		var page = pm.criteria.page;
		
		str+=	'<ul class="pagination justify-content-center">'
		str+=    '<li class="page-item '+prevDisabled+'" data-page="'+(pm.startPage - 1)+'"><a class="page-link" href="javascript:;">previous</a></li>'
		for(i = pm.startPage; i<= pm.endPage; i++){
			var active = page == i ? 'active' : '';
		str+=    '<li class="page-item '+ active +'" data-page="'+i+'"><a class="page-link" href="javascript:;">'+i+'</a></li>'
		}
		str+=    '<li class="page-item '+nextDisabled+'" data-page="'+(pm.endPage + 1)+'"><a class="page-link" href="javascript:;">next</a></li>'
		str+=  '</ul>'
		return str;
	}
	</script>
</body>
</html>