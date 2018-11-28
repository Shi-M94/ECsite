package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport{;
	private String message;

	public String execute() throws SQLException{
		String result =ERROR;

		ItemListDeleteCompleteDAO itemListCompleteDAO=new ItemListDeleteCompleteDAO();
		int res=itemListCompleteDAO.delete();

		if(res>0){
			setMessage("商品情報を正しく削除しました。");
		}else if(res==0){
			setMessage("商品情報の削除に失敗しました。");
		}

		result=SUCCESS;
		return result;
	}

	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}




}