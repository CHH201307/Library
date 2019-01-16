package com.ch.bean.userbean;

import java.math.BigDecimal;

import com.ch.base.vo.BaseVo;
/**
 * 用户的实体类
 * @author Administrator
 *
 */
public class User extends BaseVo{
	private String user_id;
	private String username;
	private String password;
	private String name;
	private String email;
	private String pic;
	private String create_date;
	private String flag;
	private String is_lock;
	private BigDecimal account_mony;
	public User() {
		super("t_user");
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getIs_lock() {
		return is_lock;
	}
	public void setIs_lock(String is_lock) {
		this.is_lock = is_lock;
	}
	public BigDecimal getAccount_mony() {
		return account_mony;
	}
	public void setAccount_mony(BigDecimal account_mony) {
		this.account_mony = account_mony;
	}
	
}
