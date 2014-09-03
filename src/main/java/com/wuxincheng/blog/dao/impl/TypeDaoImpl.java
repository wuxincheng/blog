package com.wuxincheng.blog.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.blog.dao.TypeDao;
import com.wuxincheng.blog.model.Type;
import com.wuxincheng.comm.dao.BaseDao;

@Repository("typeDao")
public class TypeDaoImpl extends BaseDao implements TypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Type> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("Type.queryAll");
	}

}
