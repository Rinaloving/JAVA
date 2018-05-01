package cn.test.util;

public class AllFile
{
  String fileName;
  String fileNameType;

  public String getFileName()
  {
    return this.fileName;
  }
  public void setFileName(String fileName) {
    this.fileName = fileName;
  }
  public String getFileNameType() {
    return this.fileNameType;
  }
  public void setFileNameType(String fileNameType) {
    this.fileNameType = fileNameType;
  }

  public AllFile(String fileName, String fileNameType) {
    this.fileName = fileName;
    this.fileNameType = fileNameType;
  }

  public AllFile()
  {
  }
}