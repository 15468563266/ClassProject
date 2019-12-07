package com.zhiyou.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Course;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourserService;

import sun.print.resources.serviceui;

@Controller

public class CourseController {
	
	@Autowired
	CourserService service;
	
	@RequestMapping("course")
	public String findAll(Integer page,HttpServletRequest req, HttpServletResponse rep) {
		Integer count = service.selectCount();
		if(page==null) {
			page=1;
		}
		List<Video> list = service.selectAllLimit((page-1)*5, 5);
		req.setAttribute("count", count);
		System.out.println("list"+list);
		req.setAttribute("list", list);
		req.setAttribute("page", page);	
		return "course/show";
	}
	
	@RequestMapping("selectById2")
	public String selectById2(int id,HttpServletRequest req,HttpServletResponse httpServletResponse) {
		req.setAttribute("course", service.selectById2(id));
		return "course/update";
		
	}
	
	
	@RequestMapping("update2")
	public String update2(Course course ,HttpServletRequest req,HttpServletResponse response) {
		service.update2(course);
		return "redirect:course";
		
	}
	
	
	@RequestMapping("add2")
	public String  add2(Course course ,HttpServletRequest req,HttpServletResponse response) {
		service.add2(course);
		return "redirect:course";
		
	}
	
	@RequestMapping("delete2")
	public String delete2(int id,HttpServletRequest req,HttpServletResponse httpServletResponse) {
		
		service.delete2(id);
		
		return "redirect:course";
		
	}
	
	
	
	
	
}
