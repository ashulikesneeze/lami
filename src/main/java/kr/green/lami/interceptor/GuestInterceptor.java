package kr.green.lami.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class GuestInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		//세션에 있는 회원정보를 가져오는 코드. 세션에 user로 저장했기에 user를 가져옴  
		Object user = request.getSession().getAttribute("user");
		//세션에 회원정보가 있으면 => 로그인을 했으면 
		if(user != null) {
			response.sendRedirect(request.getContextPath()+"/");
			//원래가던길 말고 다른길로 
			return false;
		}
		//원래가는길로 가면 
		return true;
	}
}
