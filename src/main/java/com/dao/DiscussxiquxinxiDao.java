package com.dao;

import com.entity.DiscussxiquxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussxiquxinxiVO;
import com.entity.view.DiscussxiquxinxiView;


/**
 * 戏曲信息评论表
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface DiscussxiquxinxiDao extends BaseMapper<DiscussxiquxinxiEntity> {
	
	List<DiscussxiquxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
	
	DiscussxiquxinxiVO selectVO(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
	
	List<DiscussxiquxinxiView> selectListView(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);

	List<DiscussxiquxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
	
	DiscussxiquxinxiView selectView(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
	
}
