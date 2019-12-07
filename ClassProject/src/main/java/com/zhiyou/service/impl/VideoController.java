package com.zhiyou.service.impl;



import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Controller
public class VideoController {
		
	@Autowired
	VideoService service;
	
	@RequestMapping("videoLike")
	public String Like(@Param("field") String field,@Param("name") String name,HttpServletRequest req,HttpServletResponse resp)  {
		List<Video> listLike = service.selectAllLike(field,name);
		req.setAttribute("listLike", listLike);
		return "forward:video/videoshow.jsp";
		
	}
	
	@RequestMapping("video")
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
		System.out.println("11111111111111");
		System.out.println("wowoo wwoo"+video);
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
