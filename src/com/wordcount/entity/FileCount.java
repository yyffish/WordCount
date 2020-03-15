package com.wordcount.entity;

public class FileCount {
	private String fileName;
	private Integer charNum;
	private Integer lineNum;
	private Integer wordNum;
	private Integer codeLineNum;
	private Integer emptyLineNum;
	private Integer remarkLineNUm;

	public FileCount() {
		super();
	}

	public FileCount(String fileName, Integer charNum, Integer lineNum, Integer wordNum, Integer codeLineNum,
			Integer emptyLineNum, Integer remarkLineNUm) {
		super();
		this.fileName = fileName;
		this.charNum = charNum;
		this.lineNum = lineNum;
		this.wordNum = wordNum;
		this.codeLineNum = codeLineNum;
		this.emptyLineNum = emptyLineNum;
		this.remarkLineNUm = remarkLineNUm;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Integer getCharNum() {
		return charNum;
	}

	public void setCharNum(Integer charNum) {
		this.charNum = charNum;
	}

	public Integer getLineNum() {
		return lineNum;
	}

	public void setLineNum(Integer lineNum) {
		this.lineNum = lineNum;
	}

	public Integer getwordNum() {
		return wordNum;
	}

	public void setwordNum(Integer wordNum) {
		this.wordNum = wordNum;
	}

	public Integer getCodeLineNum() {
		return codeLineNum;
	}

	public void setCodeLineNum(Integer codeLineNum) {
		this.codeLineNum = codeLineNum;
	}

	public Integer getEmptyLineNum() {
		return emptyLineNum;
	}

	public void setEmptyLineNum(Integer emptyLineNum) {
		this.emptyLineNum = emptyLineNum;
	}

	public Integer getRemarkLineNUm() {
		return remarkLineNUm;
	}

	public void setRemarkLineNUm(Integer remarkLineNUm) {
		this.remarkLineNUm = remarkLineNUm;
	}

}
