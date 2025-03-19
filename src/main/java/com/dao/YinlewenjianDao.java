package com.dao;

import com.entity.YinlewenjianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YinlewenjianVO;
import com.entity.view.YinlewenjianView;


/**
 * 音乐文件
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface YinlewenjianDao extends BaseMapper<YinlewenjianEntity> {
	
	List<YinlewenjianVO> selectListVO(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
	
	YinlewenjianVO selectVO(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
	
	List<YinlewenjianView> selectListView(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);

	List<YinlewenjianView> selectListView(Pagination page,@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
	
	YinlewenjianView selectView(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
	
}
