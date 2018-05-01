package cn.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

public class loginAction extends ActionSupport
{
  private static final long serialVersionUID = 1L;
  private String username;
  private String password;

  public String getUsername()
  {
    return this.username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getPassword() {
    return this.password;
  }
  public void setPassword(String password) {
    this.password = password;
  }

  public String execute() throws Exception {
    ActionContext actionContext = ActionContext.getContext();
    if ((getUsername().equals("kfq")) && (getPassword().equals("123"))) {
      Map sessionMap = actionContext.getSession();
      sessionMap.put("username", getUsername());
      return "success";
    }
    actionContext.put("tip", "用户名或密码不正确！");
    return "error";
  }
}