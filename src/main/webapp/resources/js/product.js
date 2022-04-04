
let productService = (function(){
	
	function setContextPath(contextPath){
		this.contextPath = contextPath;
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
		name : 'ProductService',
		contextPath : '',
		setContextPath : setContextPath,
		insert : ajaxPost,
		list : ajaxGet,
		delete : ajaxGet,
		modify : ajaxPost
	};
})();