package com.workcount.service;

import com.wordcount.entity.FileCount;
import com.workcount.dao.FileCountDao;

public class FileCountService {

	FileCountDao fileCountDao = new FileCountDao();

	/**
	 * 根据路径返回FileCount对象
	 * 
	 * @param path
	 * @return
	 */
	public FileCount count(String path) {
		return fileCountDao.count(path);
	}
}
