package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport implements SessionAware{
	private ArrayList<UserInfoDTO> userInfoDTOList=new ArrayList<UserInfoDTO>();
	private Map<String,Object> session;

	public String execute() throws SQLException{
		UserListDAO userListDAO=new UserListDAO();
		userInfoDTOList=userListDAO.getUserList();
		String result=SUCCESS;
		return result;
	}

	public ArrayList<UserInfoDTO> getUserInfoDTOList() {
		return userInfoDTOList;
	}
	public void setUserInfoDTOList(ArrayList<UserInfoDTO> userInfoDTOList) {
		this.userInfoDTOList = userInfoDTOList;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}




}
