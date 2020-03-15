package com.workcount.service;

import com.wordcount.entity.Folder;
import com.workcount.dao.FolderDao;

public class FolderService {

	FolderDao folderDao = new FolderDao();

	public Folder getFolder(String path) {
		return folderDao.getFolder(path);
	}

}
