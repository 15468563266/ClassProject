package com.zhiyou.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Controller
public class VideoController {
		
	@Autowired
	VideoService service;
	
	@RequestMapping("video")
	public String findAll(HttpServletRequest req,HttpServletResponse rep) {	
		
		req.setAttribute("list", service.findAll());
		
		return "video/show";
	}
	
	@RequestMapping("delete")
	public String delete(int video_id,HttpServletRequest req,HttpServletResponse rep) {	
		service.delete(video_id);
		return "redirect:video";	
	}
	
	@RequestMapping("selectByID")
	public String selectByID(int video_id,HttpServletRequest req,HttpServletResponse rep) {
		req.setAttribute("video", service.selectByID(video_id));		
		return "video/update";	
	}
	
	@RequestMapping("update")
	public String update(Video video,HttpServletRequest req,HttpServletResponse rep) {
		service.update(video);		
		return "redirect:video";
	}
	
	@RequestMapping("add")
	public String add(Video video,HttpServletRequest req,HttpServletResponse rep) {
		System.out.println("22222222222"+video);
		service.add(video);
		return "redirect:video";
	}
	
}
