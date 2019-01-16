package com.ch.bean.menubean;

import com.ch.base.vo.BaseVo;
/**
 * 菜单的实体类
 * @author Administrator
 *
 */
public class Menu extends BaseVo {
	private String menu_id;
	private String menu_name;
	private String menu_code;
	private String flag;
	private String create_date;
	private String menu_url;
	private String parent_id;
	private String is_children;
	private Long order_num;
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_code() {
		return menu_code;
	}
	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	public String getIs_children() {
		return is_children;
	}
	public void setIs_children(String is_children) {
		this.is_children = is_children;
	}
	public Long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Long order_num) {
		this.order_num = order_num;
	}
	public Menu() {
		super("t_menu");
	}
	
}
