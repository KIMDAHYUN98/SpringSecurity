package com.company.temp.user.service.impl;

import java.util.List;

import com.company.temp.user.UserVO;


public interface UserMapper {
	
	public void insertUser(UserVO vo);
	
	public void updateUser(UserVO vo);
	
	public int deletetUser(UserVO vo);
	
	public UserVO getUser(UserVO vo);
	
	public List<UserVO> getSearchUser(UserVO vo);
	
	public boolean updatePw(UserVO vo);
}
