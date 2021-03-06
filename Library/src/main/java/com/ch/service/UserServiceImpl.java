package com.ch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.bean.userbean.User;
import com.ch.common.dao.IBaseDao;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private IBaseDao dao;
	
	private final String sqlPackage="com.ch.bean.userbean.User";
	@Override
	public PageInfo<User> list(User paramer, Integer pageNum, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<User> list = dao.list(paramer, sqlPackage+".listUser");
		PageInfo<User> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}
	/* (non-Javadoc)
	 * @see com.ch.service.UserService#deleteOne(java.lang.String)
	 */
	@Override
	public void deleteOne(String id) {
		// TODO Auto-generated method stub
		dao.delete(sqlPackage+".deleteOne", id);
	}
	/* (non-Javadoc)
	 * @see com.ch.service.UserService#get(java.lang.String)
	 */
	@Override
	public User get(String user_id) {
		// TODO Auto-generated method stub
		return dao.get(user_id, sqlPackage+".get");
	}
	/* (non-Javadoc)
	 * @see com.ch.service.UserService#save(com.ch.bean.userbean.User)
	 */
	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		dao.insert(user, sqlPackage+".saveUser");
	}

}
