package com.ch.common.dao;

import java.util.List;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.base.vo.BaseVo;

@Repository
public class BaseDao implements IBaseDao {
	@Autowired
	private SqlSessionTemplate dao;
	
	public <T extends BaseVo> T insert(T vo, String statementId) {
		// TODO Auto-generated method stub
		dao.insert(statementId, vo);
		return vo;
	}

	public <T extends BaseVo> List<T> list(T vo, String statementId) {
		// TODO Auto-generated method stub
		return dao.selectList(statementId, vo);
	}

	public <T extends BaseVo> Integer Update(String statementId, T vo) {
		// TODO Auto-generated method stub
		return dao.update(statementId, vo);
	}

	public <T extends BaseVo> Integer delete(String statementId, T vo) {
		// TODO Auto-generated method stub
		return dao.update(statementId, vo);
	}
	
	/**
	 * 该方法暂未修改
	 */
	public <T extends BaseVo> Integer batchDelete(String statementId, List<String> ids) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = dao.getSqlSessionFactory().openSession(ExecutorType.BATCH,false);
		if (ids==null||ids.size()==0) {
			return 0;
		}
		int count=0;
		int batch=100;
		for (String id : ids) {
			if (ids.size()>=batch) {
				sqlSession.delete(statementId, id);
				if (count%batch==0) {
					sqlSession.commit();
				}
			}else {
				sqlSession.delete(statementId, id);
			}
			count++;
		}
		sqlSession.commit();
		return count;
	}

	public <T extends BaseVo> List<T> batchSave(String statementId, List<T> voList) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = dao.getSqlSessionFactory().openSession(ExecutorType.BATCH,false);
		if (voList==null||voList.size()==0) {
			return voList;
		}
		int batchCount = 1000;// 每批commit的个数
        int batchLastIndex = batchCount;// 每批最后一个的下标
        for (int index = 0; index < voList.size();) {
            if (batchLastIndex >= voList.size()) {
                batchLastIndex = voList.size();
                sqlSession.insert(statementId,voList.subList(index, batchLastIndex));
                sqlSession.commit();
                break;// 数据插入完毕，退出循环
            } else {
                sqlSession.insert(statementId,voList.subList(index, batchLastIndex));
                sqlSession.commit();
                index = batchLastIndex;// 设置下一批下标
                batchLastIndex = index + (batchCount - 1);
            }
        }
        sqlSession.commit();
		return voList;
	}
	
	/**
	 * 该方法暂未具体实现
	 */
	public <T extends BaseVo> Integer batchUpdate(String statementId, List<T> voList) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = dao.getSqlSessionFactory().openSession(ExecutorType.BATCH,false);
		if (voList==null||voList.size()==0) {
			return 0;
		}
		int count=0;
		for (T t : voList) {
			count=sqlSession.update(statementId, t);
			if (count%20==0) {
				sqlSession.flushStatements();
				sqlSession.commit();
			}
		}
		sqlSession.flushStatements();
		sqlSession.commit();
		return count;
	}


}
