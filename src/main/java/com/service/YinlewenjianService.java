package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YinlewenjianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YinlewenjianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YinlewenjianView;


/**
 * 音乐文件
 *
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface YinlewenjianService extends IService<YinlewenjianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YinlewenjianVO> selectListVO(Wrapper<YinlewenjianEntity> wrapper);
   	
   	YinlewenjianVO selectVO(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
   	
   	List<YinlewenjianView> selectListView(Wrapper<YinlewenjianEntity> wrapper);
   	
   	YinlewenjianView selectView(@Param("ew") Wrapper<YinlewenjianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YinlewenjianEntity> wrapper);
   	
}

