package com.wuxincheng.web.blog.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.util.Constants;
import com.wuxincheng.util.Validation;
import com.wuxincheng.web.blog.dao.BlogInfoDao;
import com.wuxincheng.web.blog.model.BlogInfo;
import com.wuxincheng.web.blog.service.BlogInfoService;

/**
 * 博客信息
 * 
 * @author wuxincheng
 *
 */
@Service("blogInfoService")
public class BlogInfoServiceImpl implements BlogInfoService {

	@Resource private BlogInfoDao blogInfoDao;
	
	@Override
	public Map<String, Object> queryPager(int start, int end) {
		// 返回结果
		Map<String, Object> reault = new HashMap<String, Object>();
		
		// 查询条件
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("end", end);
		
		int totalCount = blogInfoDao.queryCount(); // 总记录数
		List<BlogInfo> blogInfos = blogInfoDao.queryPager(params); // 当前页的数据
		
		reault.put("blogInfos", blogInfos);
		reault.put("totalCount", totalCount);
		
		return reault;
	}
	
	@Override
	public List<BlogInfo> queryAll() {
		return blogInfoDao.queryAll();
	}
	
	@Override
	public BlogInfo queryByBlogId(String blogId) {
		return blogInfoDao.queryByBlogId(blogId);
	}

	@Override
	public void updateReadCount(String blogId) {
		blogInfoDao.updateReadCount(blogId);
	}

	@Override
	public List<BlogInfo> queryRead(String line, String orderby) {
		// 判断是否为正整数, 如果是则返回空
		if (!Validation.isInt(line, "+")) {
			return null;
		}
		
		Integer intLine = Integer.parseInt(line);
		
		if (Constants.ORDER_BY_DESC.equals(orderby)) {
			return blogInfoDao.queryTopRead(intLine);
		} else if (Constants.ORDER_BY_ASC.equals(orderby)) {
			return blogInfoDao.queryFooterRead(intLine);
		} else {
			return null;
		}
	}

}
