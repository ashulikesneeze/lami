/**detail.jsp에 코드가 너무 많고 
나중 재사용을 위해 여기에 정리해 놓는다 
 * 
 */
let answerService = (function(){
	
	function setContextPath(contextPath){
		this.contextPath = contextPath;
	}
	
	function ajaxPost(vo, url, success){
		$.ajax({
      async:false,
      type:'POST',
      data:JSON.stringify(vo),
      url: this.contextPath + url,
      contentType:"application/json; charset=UTF-8",
      success : function(res){
        success(res);
      }
  	});
	}
	function ajaxGet(url,success){
		$.ajax({
	    async:false,
	    type:'get',
	    url:contextPath + url,
	    dataType:"json",
	    success : function(res){
        success(res);
	    }
    });
	}
	
	return {
		name : 'AnswerService',
		contextPath : '',
		setContextPath : setContextPath,
		insert : ajaxPost,
		list : ajaxGet,
		delete : ajaxGet,
		modify : ajaxPost
	};
})();