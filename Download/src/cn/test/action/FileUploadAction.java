package cn.test.action;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import javax.servlet.ServletContext;
import org.apache.struts2.ServletActionContext;

public class FileUploadAction extends ActionSupport
{
  private static final long serialVersionUID = 1L;
  private File uploadFile;
  private String uploadFileContentType;
  private String uploadFileFileName;
  private static String name;
  private String prefix;
  String uploadPath;

  public String getPrefix()
  {
    return this.prefix;
  }

  public void setPrefix(String prefix) {
    this.prefix = prefix;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    name = name;
  }

  public File getUploadFile() {
    return this.uploadFile;
  }

  public void setUploadFile(File uploadFile) {
    this.uploadFile = uploadFile;
  }

  public String getUploadFileContentType() {
    return this.uploadFileContentType;
  }

  public void setUploadFileContentType(String uploadFileContentType) {
    this.uploadFileContentType = uploadFileContentType;
  }

  public String getUploadFileFileName() {
    return this.uploadFileFileName;
  }

  public void setUploadFileFileName(String uploadFileFileName) {
    this.uploadFileFileName = uploadFileFileName;
  }

  public String execute() throws Exception
  {
    name = "小黑喵";
    InputStream is = new FileInputStream(this.uploadFile);

    System.out.println("上传的文件名是：" + getUploadFileFileName());
    this.prefix = getUploadFileFileName().substring(getUploadFileFileName().lastIndexOf(".") + 1);
    System.out.println(this.prefix);
    if ((this.prefix.equals("jpg")) || (this.prefix.equals("png")) || (this.prefix.equals("bmp")) || (this.prefix.equals("gif")))
      this.uploadPath = ServletActionContext.getServletContext().getRealPath("/wallpaper");
    else {
      this.uploadPath = ServletActionContext.getServletContext().getRealPath("/upload");
    }

    System.out.println(this.uploadPath);

    File toFile = new File(this.uploadPath, getUploadFileFileName());
    OutputStream os = new FileOutputStream(toFile);
    byte[] buffer = new byte[1024];
    int length = 0;

    while ((length = is.read(buffer)) > 0) {
      os.write(buffer, 0, length);
    }

    is.close();
    os.close();

    return "success";
  }
}