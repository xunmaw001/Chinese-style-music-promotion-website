package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshipinzhuanquEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshipinzhuanquVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshipinzhuanquView;


/**
 * 视频专区评论表
 *
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface DiscussshipinzhuanquService extends IService<DiscussshipinzhuanquEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshipinzhuanquVO> selectListVO(Wrapper<DiscussshipinzhuanquEntity> wrapper);
   	
   	DiscussshipinzhuanquVO selectVO(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
   	
   	List<DiscussshipinzhuanquView> selectListView(Wrapper<DiscussshipinzhuanquEntity> wrapper);
   	
   	DiscussshipinzhuanquView selectView(@Param("ew") Wrapper<DiscussshipinzhuanquEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshipinzhuanquEntity> wrapper);
   	
}

