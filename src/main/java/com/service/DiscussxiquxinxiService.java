package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxiquxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxiquxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxiquxinxiView;


/**
 * 戏曲信息评论表
 *
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface DiscussxiquxinxiService extends IService<DiscussxiquxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxiquxinxiVO> selectListVO(Wrapper<DiscussxiquxinxiEntity> wrapper);
   	
   	DiscussxiquxinxiVO selectVO(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
   	
   	List<DiscussxiquxinxiView> selectListView(Wrapper<DiscussxiquxinxiEntity> wrapper);
   	
   	DiscussxiquxinxiView selectView(@Param("ew") Wrapper<DiscussxiquxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxiquxinxiEntity> wrapper);
   	
}

