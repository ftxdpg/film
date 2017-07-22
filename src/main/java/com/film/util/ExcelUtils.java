package com.film.util;

import com.film.model.User;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;

import javax.servlet.ServletOutputStream;
import java.util.List;

public class ExcelUtils {

	// 导出用户信息
	public static void export(List<User> personList, ServletOutputStream outputStream) {
		try {
			// 创建工作簿
			HSSFWorkbook workbook = new HSSFWorkbook();
			// 1.1、创建合并单元格对象
			// 参数：起始行、结束行、起始列、结束列
			CellRangeAddress cellRangeAddress = new CellRangeAddress(0,0,0,4);
			// 1.2、创建头标题样式并创建字体
			HSSFCellStyle style1 = creatCellStyle(workbook, (short)16);
			
			// 1.3、创建列标题样式
			HSSFCellStyle style2 = creatCellStyle(workbook, (short)13);
			
			// 2、创建工作表
			HSSFSheet sheet = workbook.createSheet();
			
			// 2.1、加载单元格合并对象
			sheet.addMergedRegion(cellRangeAddress);
			
			// 2.2、设置默认列宽
			sheet.setDefaultColumnWidth(25);
			
			// 3、创建行
			// 3.1、创建头标题并写入头标题
			HSSFRow row1 = sheet.createRow(0);
			HSSFCell cell1 = row1.createCell(0);
			// 3.1.1 设置头标题样式以及头标题内容
			cell1.setCellStyle(style1);
			cell1.setCellValue("用户列表");
			
			// 3.2、创建列标题并写入列标题
			HSSFRow row2 = sheet.createRow(1);
			String[] titles = {"用户id", "用户名", "密码", "邮箱", "手机"};
			for(int i = 0; i < titles.length; i++){
				HSSFCell cell2 = row2.createCell(i);
				// 3.1.1 设置头标题样式以及头标题内容
				cell2.setCellStyle(style2);
				cell2.setCellValue(titles[i]);
			}
			
			
			// 4、创建单元格，写入用户数据到excel
			if(personList != null && personList.size() > 0){
				for(int i = 0; i < personList.size(); i++){
					HSSFRow row = sheet.createRow(i+2);
					// 写入信息
					row.createCell(0).setCellValue(personList.get(i).getUid());
					row.createCell(1).setCellValue(personList.get(i).getName());
					row.createCell(2).setCellValue(personList.get(i).getPassword());
					row.createCell(3).setCellValue(personList.get(i).getEmail());
					row.createCell(4).setCellValue(personList.get(i).getPhone());
				}
			}
			// 5、输出
			workbook.write(outputStream);
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 创建单元格样式
	 * @param workbook 工作簿对象
	 * @param fontsize  字体大小
	 * @return
	 */
	private static HSSFCellStyle creatCellStyle(HSSFWorkbook workbook, short fontsize){
		HSSFCellStyle style = workbook.createCellStyle();
		// 水平居中
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		// 垂直居中
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		// 创建字体
		HSSFFont font = workbook.createFont();
		// 加粗
		font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		// 字体大小
		font.setFontHeightInPoints(fontsize);
		return style;
	}
}
