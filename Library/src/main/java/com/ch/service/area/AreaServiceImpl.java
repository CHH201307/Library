package com.ch.service.area;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.bean.areabean.Area;
import com.ch.common.dao.IBaseDao;
@Service
public class AreaServiceImpl implements AreaService {
	@Autowired
	private IBaseDao dao;
	
	private final String sqlPackage="com.ch.bean.areabean.Area";
	
	@Override
	public List<Area> list(Area area) {
		// TODO Auto-generated method stub
		return dao.list(area, sqlPackage+".list");
	}

}
