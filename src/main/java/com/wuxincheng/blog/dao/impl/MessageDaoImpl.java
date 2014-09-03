package com.wuxincheng.blog.dao.impl;

import org.springframework.stereotype.Repository;

import com.wuxincheng.blog.dao.MessageDao;
import com.wuxincheng.blog.model.Message;
import com.wuxincheng.comm.dao.BaseDao;

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
