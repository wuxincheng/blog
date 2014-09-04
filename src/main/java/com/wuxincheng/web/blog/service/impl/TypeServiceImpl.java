package com.wuxincheng.web.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.web.blog.dao.TypeDao;
import com.wuxincheng.web.blog.model.Type;
import com.wuxincheng.web.blog.service.TypeService;

@Service("typeService")
public class TypeServiceImpl implements TypeService {

	@Resource private TypeDao typeDao;
	
	@Override
	public List<Type> queryAll() {
		return typeDao.queryAll();
	}

}
