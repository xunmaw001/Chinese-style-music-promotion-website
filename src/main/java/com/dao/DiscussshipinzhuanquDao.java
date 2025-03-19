package com.dao;

import com.entity.DiscussshipinzhuanquEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshipinzhuanquVO;
import com.entity.view.DiscussshipinzhuanquView;


/**
 * 视频专区评论表
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface DiscussshipinzhuanquDao extends BaseMapper<DiscussshipinzhuanquEntity> {
	
	List<DiscussshipinzhuanquVO> selectListVO(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
	
	DiscussshipinzhuanquVO selectVO(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
	
	List<DiscussshipinzhuanquView> selectListView(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);

	List<DiscussshipinzhuanquView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
	
	DiscussshipinzhuanquView selectView(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
	
}
