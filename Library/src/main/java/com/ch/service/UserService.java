package com.ch.service;

import java.util.List;

import com.ch.bean.userbean.User;
import com.github.pagehelper.PageInfo;

public interface UserService {
	public PageInfo<User> list(User paramer,Integer pageNum,Integer pageSize);
}