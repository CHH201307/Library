package com.ch.common.result;
/**
 * 通用的返回实体类
 * @author Administrator
 *
 * @param <T>
 */
public class ReturnResult<T> {
	private String msg;
	private Integer code;
	private T data;
	private Long count;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
}
