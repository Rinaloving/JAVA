package cn.test.action;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


public class FileDeleteAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	  private String fileName;
	  private String realFilePath;
	  private String downFilePath;
	  private String fileName2;
	  private String FilePath;
	  File[] names;
	  int i = 0;
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

	  public void getDownloadFile()
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
	    System.out.println("������" + this.fileName);
	    System.out.println("����ҳ��������eeee ��" + this.fileName2);
	   // delFolder("/upload/" + this.fileName2);
	   // return ServletActionContext.getServletContext().getResourceAsStream("/upload/" + this.fileName2);
	  }

	  public String execute() throws Exception
	  {
		  
				  
				System.out.println("OK");
		    	
					String FilePath2 = ServletActionContext.getServletContext().getRealPath("/upload");
					System.out.println("------+++++0"+FilePath2);
				    System.out.println("����ҳ�������ģ�"+FilePath2 +"\\"+ this.fileName2);
				    i++;
				    System.out.println("==============="+i);
				    delFolder(FilePath2 +"\\"+ this.fileName2);
			    	return "success";
		    	
			
			
	  }
	  
	//ɾ���ļ���
		//param folderPath �ļ�����������·��
		public static void delFolder(String folderPath){
			try {
				delAllFile(folderPath); //ɾ����������������
				String filePath = folderPath;
				filePath = filePath.toString();
				File myFilePath = new File(filePath);
				myFilePath.delete(); //ɾ�����ļ���
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}
		//ɾ��ָ���ļ����������ļ�
		//param path �ļ�����������·��
		public static boolean delAllFile(String path){
			boolean flag = false;
			File file = new File(path);
			if(!file.exists()){
				return flag;
			}
			if(!file.isDirectory()){
				return flag;
			}
			String [] tempList = file.list();
			File temp = null;
			for (int i = 0; i < tempList.length; i++) {
				if(path.endsWith(File.separator)){
					temp = new File(path + tempList[i]);
				}else{
					temp = new File(path + File.separator + tempList[i]);
				}
				if(temp.isFile()){
					temp.delete();
				}
				if(temp.isDirectory()){
					delAllFile(path+"/" + tempList[i]); //��ɾ���ļ���������ļ�
					delFolder(path + "/"+ tempList[i]); //��ɾ�����ļ���
					flag = true;
				}
			}
			return flag;
		}

}
