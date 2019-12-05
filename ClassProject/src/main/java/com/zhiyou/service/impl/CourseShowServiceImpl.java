package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.CourseShowMapper;
import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseShowService;

@Service
public class CourseShowServiceImpl implements CourseShowService {

	@Autowired
	CourseShowMapper mapper;

	public List<Subject> selectSubjectById(Integer subject_id) {

		return mapper.selectSubjectById(subject_id);
	}

	public List<Course> selectCourseById(Integer subject_id) {

		return mapper.selectCourseById(subject_id);
	}

	public List<Video> selectVideoById(Integer course_id) {

		return mapper.selectVideoById(course_id);
	}

}
