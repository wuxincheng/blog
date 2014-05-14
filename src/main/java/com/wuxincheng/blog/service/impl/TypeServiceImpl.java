package com.wuxincheng.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.blog.dao.TypeDao;
import com.wuxincheng.blog.model.Type;
import com.wuxincheng.blog.service.TypeService;

@Service("typeService")
public class TypeServiceImpl implements TypeService {

	@Resource private TypeDao typeDao;
	
	@Override
	public List<Type> queryAll() {
		return typeDao.queryAll();
	}

}
