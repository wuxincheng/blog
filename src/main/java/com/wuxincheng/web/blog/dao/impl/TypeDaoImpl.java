package com.wuxincheng.web.blog.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.dao.BaseDao;
import com.wuxincheng.web.blog.dao.TypeDao;
import com.wuxincheng.web.blog.model.Type;

@Repository("typeDao")
public class TypeDaoImpl extends BaseDao implements TypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Type> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("Type.queryAll");
	}

}
