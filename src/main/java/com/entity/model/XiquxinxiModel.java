package com.entity.model;

import com.entity.XiquxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 戏曲信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public class XiquxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 类型
	 */
	
	private String leixing;
		
	/**
	 * 乐器类型
	 */
	
	private String leqileixing;
		
	/**
	 * 歌手
	 */
	
	private String geshou;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 歌词
	 */
	
	private String geci;
		
	/**
	 * 时间
	 */
	
	private String shijian;
		
	/**
	 * 试听
	 */
	
	private String shiting;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
				
	
	/**
	 * 设置：类型
	 */
	 
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
				
	
	/**
	 * 设置：乐器类型
	 */
	 
	public void setLeqileixing(String leqileixing) {
		this.leqileixing = leqileixing;
	}
	
	/**
	 * 获取：乐器类型
	 */
	public String getLeqileixing() {
		return leqileixing;
	}
				
	
	/**
	 * 设置：歌手
	 */
	 
	public void setGeshou(String geshou) {
		this.geshou = geshou;
	}
	
	/**
	 * 获取：歌手
	 */
	public String getGeshou() {
		return geshou;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：歌词
	 */
	 
	public void setGeci(String geci) {
		this.geci = geci;
	}
	
	/**
	 * 获取：歌词
	 */
	public String getGeci() {
		return geci;
	}
				
	
	/**
	 * 设置：时间
	 */
	 
	public void setShijian(String shijian) {
		this.shijian = shijian;
	}
	
	/**
	 * 获取：时间
	 */
	public String getShijian() {
		return shijian;
	}
				
	
	/**
	 * 设置：试听
	 */
	 
	public void setShiting(String shiting) {
		this.shiting = shiting;
	}
	
	/**
	 * 获取：试听
	 */
	public String getShiting() {
		return shiting;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
			
}
