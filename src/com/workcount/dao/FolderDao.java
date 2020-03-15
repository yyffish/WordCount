package com.workcount.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.wordcount.entity.Folder;

public class FolderDao {

	/**
	 * 根据路径返回Folder对象
	 * 
	 * @param path
	 * @return
	 */
	public Folder getFolder(String path) {
		Folder folder = new Folder();
		File dir = new File(path);
		String[] tempList = dir.list();
		List<String> fileList = new ArrayList<>();
		List<String> folderList = new ArrayList<>();
		for (int i = 0; i < tempList.length; i++) {
			String tempPath = path + tempList[i] + "/";
			File tempFile = new File(tempPath);
			if (tempFile.isFile()) {
				if (tempList[i].contains(".txt")) {
					fileList.add(tempList[i]);
				}
			} else {
				folderList.add(tempList[i]);
			}
		}
		folder.setFileList(fileList);
		folder.setPath(path);
		folder.setFolderList(folderList);
		return folder;
	}

}
