package com.zhiyou.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.SpeakerService;

@Controller
public class SpeakerController {
	
	
	@Autowired
	SpeakerService service;
	
	
	@RequestMapping("speaker")
	public String findAll(Integer page,HttpServletRequest req,HttpServletResponse rep) {
		Integer count = service.selectCount();
		if(page==null) {
			page=1;
		}
		List<Video> list = service.selectAllLimit((page-1)*5, 5);
		req.setAttribute("count", count);
		System.out.println("list"+list);
		req.setAttribute("list", list);
		req.setAttribute("page", page);	
		return "speaker/show";	
	}
	
	@RequestMapping("speaker/selectByID")
	public String selectByID(int id,HttpServletRequest req,HttpServletResponse rep) {
		System.out.println("2222222222222222222222222222222222222");
		System.out.println(id);
		req.setAttribute("speaker", service.selectByID(id));
		return "update";	
	}
	
	
	
	@RequestMapping("update1")
	public String update(Speaker speaker,HttpServletRequest req,HttpServletResponse rep) {
		System.out.println("33333333333333333");
		System.out.println(speaker);
		service.update(speaker);
		return "redirect:speaker";
		
	}
	
	@RequestMapping("delete1")
	public String delete(int id,HttpServletRequest req,HttpServletResponse rep) {
		
		service.delete(id);
		return "redirect:speaker";
	}
	
	@RequestMapping("add1")
	public String add(Speaker speaker,HttpServletRequest req,HttpServletResponse rep) {
		service.add(speaker);
		return "redirect:speaker";
		
	}
	
	
}
