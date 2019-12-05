package com.zhiyou.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;

@Service
public interface CourseShowService {

	// 根据id查询主题
	List<Subject> selectSubjectById(Integer subject_id);

	// 根据id查询课程
	List<Course> selectCourseById(Integer subject_id);

	// 根据id查询课程内容
	List<Video> selectVideoById(Integer course_id);
}
