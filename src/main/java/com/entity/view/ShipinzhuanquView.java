package com.entity.view;

import com.entity.ShipinzhuanquEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 视频专区
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
@TableName("shipinzhuanqu")
public class ShipinzhuanquView  extends ShipinzhuanquEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShipinzhuanquView(){
	}
 
 	public ShipinzhuanquView(ShipinzhuanquEntity shipinzhuanquEntity){
 	try {
			BeanUtils.copyProperties(this, shipinzhuanquEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
