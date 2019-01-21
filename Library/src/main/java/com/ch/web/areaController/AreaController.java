package com.ch.web.areaController;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.ch.bean.areabean.Area;
import com.ch.service.area.AreaService;
import com.github.pagehelper.util.StringUtil;

@Controller
@RequestMapping("/area")
public class AreaController {
	@Autowired
	private AreaService areaService;
	
	@RequestMapping("/list")
	@ResponseBody
	public String list(HttpServletRequest request){
		
		String area_id = request.getParameter("area_id");
		Area area = new Area();
		if (StringUtil.isNotEmpty(area_id)) {
			area.setArea_id(Integer.parseInt(area_id));
		} else {
			area.setArea_id(0);
		}
		
		
		return JSON.toJSONString(areaService.list(area));
	}
}
