package com.dao;

import com.entity.ShipinzhuanquEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShipinzhuanquVO;
import com.entity.view.ShipinzhuanquView;


/**
 * 视频专区
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface ShipinzhuanquDao extends BaseMapper<ShipinzhuanquEntity> {
	
	List<ShipinzhuanquVO> selectListVO(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
	
	ShipinzhuanquVO selectVO(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
	
	List<ShipinzhuanquView> selectListView(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);

	List<ShipinzhuanquView> selectListView(Pagination page,@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
	
	ShipinzhuanquView selectView(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
	
}
