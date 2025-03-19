package com.entity.view;

import com.entity.LeqileixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 乐器类型
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:16
 */
@TableName("leqileixing")
public class LeqileixingView  extends LeqileixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LeqileixingView(){
	}
 
 	public LeqileixingView(LeqileixingEntity leqileixingEntity){
 	try {
			BeanUtils.copyProperties(this, leqileixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
