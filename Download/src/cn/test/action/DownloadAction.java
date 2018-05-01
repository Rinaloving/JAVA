package cn.test.action;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import org.apache.struts2.ServletActionContext;

public class DownloadAction extends ActionSupport
{
  private static final long serialVersionUID = 1L;
  private String fileName;
  private String realFilePath;
  private String downFilePath;
  private String fileName2;
  private String FilePath;
  File[] names;
  private ArrayList<String> list = new ArrayList();

  public String getFilePath()
  {
    return this.FilePath;
  }
  public void setFilePath(String filePath) {
    this.FilePath = filePath;
  }
  public String getFileName2() throws UnsupportedEncodingException {
    this.fileName2 = new String(this.fileName2.getBytes("gbk"), "ISO-8859-1");
    return this.fileName2;
  }
  public void setFileName2(String fileName2) throws UnsupportedEncodingException {
    fileName2 = new String(fileName2.getBytes("ISO-8859-1"), "UTF-8");
    this.fileName2 = fileName2;
  }
  public String getDownFilePath() {
    return this.downFilePath;
  }
  public void setDownFilePath(String downFilePath) {
    this.downFilePath = downFilePath;
  }

  public ArrayList<String> getList()
  {
    return this.list;
  }
  public void setList(ArrayList<String> list) {
    this.list = list;
  }
  public String getRealFilePath() {
    return this.realFilePath;
  }
  public void setRealFilePath(String realFilePath) {
    this.realFilePath = realFilePath;
  }

  public String getFileName() {
    return this.fileName;
  }
  public void setFileName(String fileName) {
    this.fileName = fileName;
  }

  public InputStream getDownloadFile()
    throws Exception
  {
    this.FilePath = ServletActionContext.getServletContext().getRealPath("/upload");

    File file = new File(this.FilePath);

    if (file.exists()) {
      System.out.println("2222222222/upload");
      this.names = file.listFiles();
      for (int i = 0; i < this.names.length; i++)
      {
        this.realFilePath = ("/upload/" + this.names[i].getName().trim().toString());
        this.fileName = this.names[i].getName().trim().toString();
        this.list.add(this.fileName);
        System.out.println("3333333" + this.fileName);
        this.downFilePath = this.FilePath;
      }

    }

    this.fileName = new String(this.fileName.getBytes("gbk"), "ISO-8859-1");
    System.out.println("看啊看" + this.fileName);

    return ServletActionContext.getServletContext().getResourceAsStream("/upload/" + this.fileName2);
  }

  public String execute()
    throws Exception
  {
    getDownloadFile();

    System.out.println("这是页面上来的：" + this.fileName2);

    return "success";
  }
}