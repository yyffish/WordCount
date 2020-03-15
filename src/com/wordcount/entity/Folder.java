package com.wordcount.entity;

import java.util.List;

public class Folder {
	private List<String> fileList;
	private List<String> folderList;
	private String path;

	public Folder() {
		super();
	}

	public Folder(List<String> fileList, List<String> folderList, String path) {
		super();
		this.fileList = fileList;
		this.folderList = folderList;
		this.path = path;
	}

	public List<String> getFileList() {
		return fileList;
	}

	public void setFileList(List<String> fileList) {
		this.fileList = fileList;
	}

	public List<String> getFolderList() {
		return folderList;
	}

	public void setFolderList(List<String> folderList) {
		this.folderList = folderList;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
