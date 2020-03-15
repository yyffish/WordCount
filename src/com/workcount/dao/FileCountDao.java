package com.workcount.dao;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.wordcount.entity.FileCount;

public class FileCountDao {

	/**
	 * 根据路径返回FileCount对象
	 * 
	 * @param path
	 * @return
	 */
	public FileCount count(String path) {
		FileCount fileCount = new FileCount();
		String regxNodeBegin = "\\s*/\\*.*";
		String regxNodeEnd = ".*\\*/\\s*";
		String regx = "//.*";
		String regxSpace = "\\s*";
		boolean flagNode = false;
		int lineNum = 0;
		int wordNum = 0;
		int charNum = 0;
		int codeLineNum = 0;
		int emptyLineNum = 0;
		int remarkLineNUm = 0;
		try {
			StringBuffer stringBuffer = new StringBuffer();
			// 创建类进行文件的读取，并指定编码格式为utf-8
			InputStreamReader read = new InputStreamReader(new FileInputStream(path), "utf-8");
			// 可用于读取指定文件
			BufferedReader in = new BufferedReader(read);
			// 定义一个字符串类型变量str
			String str = null;
			while ((str = in.readLine()) != null) {// readLine()方法, 用于读取一行,只要读取内容不为空就一直执行
				lineNum++;// 每循环一次就进行一次自增，用于统计文本行数
				charNum += str.length();// 用于统计总字符数
				stringBuffer.append(str + '\n');
				if (str.matches(regxNodeBegin) && str.matches(regxNodeEnd)) {
					++remarkLineNUm;
					continue;
				}
				if (str.matches(regxNodeBegin)) {
					++remarkLineNUm;
					flagNode = true;
				} else if (str.matches(regxNodeEnd)) {
					++remarkLineNUm;
					flagNode = false;
				} else if (str.matches(regxSpace))
					++emptyLineNum;
				else if (str.matches(regx))
					++remarkLineNUm;
				else if (flagNode)
					++remarkLineNUm;
				else
					++codeLineNum;
			}
			in.close();// 关闭流
			Pattern pattern = Pattern.compile("\\b[a-zA-Z]+\\b");
			Matcher matcher = pattern.matcher(stringBuffer.toString());
			while (matcher.find()) {
				wordNum++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		fileCount.setwordNum(wordNum);
		fileCount.setLineNum(lineNum);
		fileCount.setCharNum(charNum);
		fileCount.setCodeLineNum(codeLineNum);
		fileCount.setEmptyLineNum(emptyLineNum);
		fileCount.setRemarkLineNUm(remarkLineNUm);
		fileCount.setFileName(path.substring(path.lastIndexOf("/") + 1));
		return fileCount;
	}

}
