package com.dao;

import com.entity.LeqileixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LeqileixingVO;
import com.entity.view.LeqileixingView;


/**
 * 乐器类型
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:16
 */
public interface LeqileixingDao extends BaseMapper<LeqileixingEntity> {
	
	List<LeqileixingVO> selectListVO(@Param("ew") Wrapper<LeqileixingEntity> wrapper);
	
	LeqileixingVO selectVO(@Param("ew") Wrapper<LeqileixingEntity> wrapper);
	
	List<LeqileixingView> selectListView(@Param("ew") Wrapper<LeqileixingEntity> wrapper);

	List<LeqileixingView> selectListView(Pagination page,@Param("ew") Wrapper<LeqileixingEntity> wrapper);
	
	LeqileixingView selectView(@Param("ew") Wrapper<LeqileixingEntity> wrapper);
	
}
