package com.wuxincheng.web.blog.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.dao.BaseDao;
import com.wuxincheng.web.blog.dao.UserDao;
import com.wuxincheng.web.blog.model.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDao implements UserDao {

	@Override
	public User query(User user) {
		return (User)this.getSqlMapClientTemplate().queryForObject("User.query", user);
	}

	@Override
	public void insert(User user) {
		this.getSqlMapClientTemplate().insert("User.insert", user);
	}

	@Override
	public void update(User user) {
		this.getSqlMapClientTemplate().update("User.update", user);
	}

	@Override
	public void modifyPwd(User user) {
		this.getSqlMapClientTemplate().update("User.modifyPwd", user);
	}

}
