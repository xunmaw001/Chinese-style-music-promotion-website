package com.entity.view;

import com.entity.DiscussxiquxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 戏曲信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
@TableName("discussxiquxinxi")
public class DiscussxiquxinxiView  extends DiscussxiquxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussxiquxinxiView(){
	}
 
 	public DiscussxiquxinxiView(DiscussxiquxinxiEntity discussxiquxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussxiquxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
