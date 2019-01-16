package com.ch.bean.rolebean;

import com.ch.base.vo.BaseVo;
/**
 * 角色的实体类
 * @author Administrator
 *
 */
public class Role extends BaseVo{
	private String role_id;
	private String role_name;
	private String role_code;
	private String create_date;
	private Long order_num;
	
	public Role() {
		super("t_role");
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_code() {
		return role_code;
	}
	public void setRole_code(String role_code) {
		this.role_code = role_code;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public Long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Long order_num) {
		this.order_num = order_num;
	}
	
}
