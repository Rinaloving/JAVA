package cn.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

public class CheckInterceptor extends AbstractInterceptor
{
  public String intercept(ActionInvocation invocation)
    throws Exception
  {
    ActionContext actionContext = invocation.getInvocationContext();
    Map sessionMap = actionContext.getSession();
    String user = (String)sessionMap.get("username");
    if ((user != null) && (user.equals("kfq"))) {
      return invocation.invoke();
    }
    actionContext.put("tip", "您还没有登录，请先登录！");
    return "login";
  }
}