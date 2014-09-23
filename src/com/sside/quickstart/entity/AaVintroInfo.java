package com.sside.quickstart.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "av_intro_info")
public class AaVintroInfo extends IdEntity{

	private String avIntro;
	private String avId;

	public String getAvIntro() {
		return avIntro;
	}
	
	public void setAvIntro(String avIntro) {
		this.avIntro = avIntro;
	}
	
	public String getAvId() {
		return avId;
	}
	
	public void setAvId(String avId) {
		this.avId = avId;
	}
}
