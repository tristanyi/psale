package com.sheng.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class ReadoutInterceptor extends AbstractInterceptor {

	/**
	 * 权限为2时的权限控制
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		String forward="";
		ActionContext ctx=invocation.getInvocationContext();
		Map<String,Object> session=ctx.getSession();
		try{
			int i=(Integer)session.get("management");
			if(i<2){
				forward=Action.ERROR;
			}else{
				forward=invocation.invoke();
			}
		}catch(Exception e){
			e.printStackTrace();
			forward=Action.ERROR;
		}
		return forward;
	}

}
