package com.ch.base.vo;
/**
 * 通用实体类 定义某些通用的属性
 * @author Administrator
 *
 */
public class BaseVo {
	private String create_date;
	private String create_user;
	private String update_user;
	private String update_date;
	private String table_name;
	
	public BaseVo(String table_name) {
		super();
		this.table_name = table_name;
	}
	public BaseVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTable_name() {
		return table_name;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getCreate_user() {
		return create_user;
	}
	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}
	public String getUpdate_user() {
		return update_user;
	}
	public void setUpdate_user(String update_user) {
		this.update_user = update_user;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	
}
