package com.ch.common.dao;

import java.util.List;

import com.ch.base.vo.BaseVo;


public interface IBaseDao {
	public <T extends BaseVo> T insert(T vo,String statementId);
	
	public <T extends BaseVo> List<T> list(T vo,String statementId);
	
	public <T extends BaseVo> Integer Update(String statementId,T vo);
	
	public <T extends BaseVo> Integer delete(String statementId,String id);
	
	public <T extends BaseVo> Integer batchDelete(String statementId,List<String> ids);
	
	public <T extends BaseVo> List<T> batchSave(String statementId,List<T> voList);
	
	public <T extends BaseVo> Integer batchUpdate(String statementId,List<T> voList);
	
	public <T extends BaseVo> T get(String id,String statementId);
	

}
