package cn.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintStream;
import java.util.Map;

public class CheckFileType extends ActionSupport
{
  private static final long serialVersionUID = 1L;
  private String fileName3;
  private String prefix;

  public String getPrefix()
  {
    return this.prefix;
  }
  public void setPrefix(String prefix) {
    this.prefix = prefix;
  }
  public String getFileName3() {
    return this.fileName3;
  }
  public void setFileName3(String fileName3) {
    this.fileName3 = fileName3;
  }

  public String execute() throws Exception {
    System.out.println("从网页上来的文件名字是：" + this.fileName3);
    ActionContext actionContext = ActionContext.getContext();
    this.prefix = this.fileName3.substring(this.fileName3.lastIndexOf(".") + 1);
    System.out.println(this.prefix);
    if (this.prefix.equals("jpg")) {
      Map sessionMap = actionContext.getSession();
      sessionMap.put("fileType", this.prefix);
      return "success";
    }

    return "success";
  }
}