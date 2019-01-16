package com.ch.common.result;
/**
 * 通用的返回实体类
 * @author Administrator
 *
 * @param <T>
 */
public class ReturnResult<T> {
	private String message;
	private String code;
	private T data;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
}
