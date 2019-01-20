package com.ch.web.userController;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.ch.bean.userbean.User;
import com.ch.common.result.ReturnResult;
import com.ch.service.UserService;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/list")
	@ResponseBody
	public String list(HttpServletRequest request,User user){
		System.err.println(user.getUsername()+" "+user.getName());
		String page = request.getParameter("page");
		String limit = request.getParameter("limit");
		if (page==null||StringUtil.isEmpty(page)) {
			page="1";
		}
		
		if (limit==null||StringUtil.isEmpty(limit)) {
			limit="10";
		}
		ReturnResult<Object> result = new ReturnResult<>();
		
		try {
			PageInfo<User> pageInfo = userService.list(user, Integer.parseInt(page), Integer.parseInt(limit));
			List<User> list = pageInfo.getList();
			long total = pageInfo.getTotal();
			result.setCount(total);
			result.setCode(0);
			result.setMsg("");
			result.setData(list);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.setCode(0);
			result.setMsg("数据请求失败请稍后重试");
		}
		
		
		
		return JSON.toJSONString(result);
	}
	
	@RequestMapping("/deleteOne")
	@ResponseBody
	public String delete(String user_id){
		ReturnResult<Object> result = new ReturnResult<>();
		try {
			userService.deleteOne(user_id);
			result.setCode(0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.setCode(1);
		}
		
		return JSON.toJSONString(result);
	}
	
	@RequestMapping("/edit")
	public ModelAndView edit(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("user/edit");
		String id = request.getParameter("id");
		if (StringUtil.isNotEmpty(id)) {
			User user = userService.get(id);
			mv.addObject("user", user);
		}
		return mv;
	}
	
	@RequestMapping("/save")
	@ResponseBody
	public String save(HttpServletRequest request,@RequestBody String body){
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		User user = new User();
		user.setUsername(username);
		user.setName(name);
		user.setEmail(email);
		ReturnResult<Object> result = new ReturnResult<>();
		try {
			if (StringUtil.isNotEmpty(user.getUser_id())) {
				
			}else {
				user.setUser_id(UUID.randomUUID().toString());
				userService.save(user);
			}
			result.setCode(1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.setCode(1);
		}
		
		return JSON.toJSONString(result);
	}
	
	
}









