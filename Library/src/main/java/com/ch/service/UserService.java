package com.ch.service;

import com.ch.bean.userbean.User;
import com.github.pagehelper.PageInfo;

public interface UserService {
	public PageInfo<User> list(User paramer,Integer pageNum,Integer pageSize);
	
	public void deleteOne(String id);
	
	public void save(User user);
	
	public User get(String user_id);
}