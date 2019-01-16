package com.ch.bean.dictbean;

import com.ch.base.vo.BaseVo;

public class DictData extends BaseVo {
	private String dict_data_id;
	private String dict_data_code;
	private String dict_data_name;
	private String dict_id;
	private String order_num;
	public String getDict_data_id() {
		return dict_data_id;
	}
	public void setDict_data_id(String dict_data_id) {
		this.dict_data_id = dict_data_id;
	}
	public String getDict_data_code() {
		return dict_data_code;
	}
	public void setDict_data_code(String dict_data_code) {
		this.dict_data_code = dict_data_code;
	}
	public String getDict_data_name() {
		return dict_data_name;
	}
	public void setDict_data_name(String dict_data_name) {
		this.dict_data_name = dict_data_name;
	}
	public String getDict_id() {
		return dict_id;
	}
	public void setDict_id(String dict_id) {
		this.dict_id = dict_id;
	}
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public DictData() {
		super("t_dict_data");
		// TODO Auto-generated constructor stub
	}
}
