package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShipinzhuanquEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShipinzhuanquVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShipinzhuanquView;


/**
 * 视频专区
 *
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface ShipinzhuanquService extends IService<ShipinzhuanquEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShipinzhuanquVO> selectListVO(Wrapper<ShipinzhuanquEntity> wrapper);
   	
   	ShipinzhuanquVO selectVO(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
   	
   	List<ShipinzhuanquView> selectListView(Wrapper<ShipinzhuanquEntity> wrapper);
   	
   	ShipinzhuanquView selectView(@Param("ew") Wrapper<ShipinzhuanquEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShipinzhuanquEntity> wrapper);
   	
}

