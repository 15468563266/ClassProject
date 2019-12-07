package com.zhiyou.mapper;

import java.util.List;

import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;

public interface CourseShowMapper {
	// 根据id查询主题
	List<Subject> selectSubjectById(Integer subject_id);

	// 根据id查询课程
	List<Course> selectCourseById(Integer subject_id);

	// 根据id查询课程内容
	List<Video> selectVideoById(Integer course_id);

	// 根据course_id查询课程
	List<Course> selectByCourse(Integer course_id);

	// 根据id查询讲师
	List<Speaker> selectSpeakerById(Integer id);

}
