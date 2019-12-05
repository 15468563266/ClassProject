package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseShowService;

@Controller
public class CourseShowController {

	@Autowired
	CourseShowService service;

	// 课程展示
	@RequestMapping("WebCourseShow")
	public String WebCourseShow(Integer number, HttpServletRequest req, HttpServletResponse resp) {

		List<Subject> subjectList = service.selectSubjectById(number);
		req.setAttribute("subjectList", subjectList.get(0));
		List<Course> courseList = service.selectCourseById(number);
		req.setAttribute("courseList", courseList);
		for (int i = 0; i <= courseList.size() - 1; i++) {
			List<Video> videoList = service.selectVideoById(Integer.valueOf(courseList.get(i).getId()));
			req.setAttribute("videoList" + i, videoList);
		}
		return "courseShow";
	}
	// 视频播放
}
