package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XiquxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XiquxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XiquxinxiView;


/**
 * 戏曲信息
 *
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface XiquxinxiService extends IService<XiquxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiquxinxiVO> selectListVO(Wrapper<XiquxinxiEntity> wrapper);
   	
   	XiquxinxiVO selectVO(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
   	
   	List<XiquxinxiView> selectListView(Wrapper<XiquxinxiEntity> wrapper);
   	
   	XiquxinxiView selectView(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiquxinxiEntity> wrapper);
   	
}

