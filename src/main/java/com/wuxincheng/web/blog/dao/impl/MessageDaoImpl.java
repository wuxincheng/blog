package com.wuxincheng.web.blog.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.dao.BaseDao;
import com.wuxincheng.web.blog.dao.MessageDao;
import com.wuxincheng.web.blog.model.Message;

@Repository("messageDao")
public class MessageDaoImpl extends BaseDao implements MessageDao {

	@Override
	public void insert(Message message) {
		this.getSqlMapClientTemplate().insert("Message.insert", message);
	}

	@Override
	public Integer queryMaxId() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("Message.queryMaxId");
	}
	
}
