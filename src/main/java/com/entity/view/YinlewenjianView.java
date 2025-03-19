package com.entity.view;

import com.entity.YinlewenjianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 音乐文件
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
@TableName("yinlewenjian")
public class YinlewenjianView  extends YinlewenjianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YinlewenjianView(){
	}
 
 	public YinlewenjianView(YinlewenjianEntity yinlewenjianEntity){
 	try {
			BeanUtils.copyProperties(this, yinlewenjianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
