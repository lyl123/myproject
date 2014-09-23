package com.sside.quickstart.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

//JPA标识
/**
 * @author 罗永亮
 *
 */
@Entity
@Table(name = "av_user_info")
public class AvUserInfo extends IdEntity{
     
	private String avName;
	private String avId;
	
	public String getAvName() {
		return avName;
	}
	
	public void setAvName(String avName) {
		this.avName = avName;
	}
	
	public String getAvId() {
		return avId;
	}
	
	public void setAvId(String avId) {
		this.avId = avId;
	}
}
