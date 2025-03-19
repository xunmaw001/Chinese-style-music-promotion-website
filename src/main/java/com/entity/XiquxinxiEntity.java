package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 戏曲信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
@TableName("xiquxinxi")
public class XiquxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XiquxinxiEntity() {
		
	}
	
	public XiquxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 歌名
	 */
					
	private String geming;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：歌名
	 */
	public void setGeming(String geming) {
		this.geming = geming;
	}
	/**
	 * 获取：歌名
	 */
	public String getGeming() {
		return geming;
	}
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
