package com.entity.view;

import com.entity.XiquxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 戏曲信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
@TableName("xiquxinxi")
public class XiquxinxiView  extends XiquxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiquxinxiView(){
	}
 
 	public XiquxinxiView(XiquxinxiEntity xiquxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, xiquxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
