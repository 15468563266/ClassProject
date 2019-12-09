package com.zhiyou.service.impl;

import java.util.List;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.CourseMapper;
import com.zhiyou.model.Course;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourserService;
@Service
public class CourseServiceImpl implements CourserService{
	@Autowired
	CourseMapper mapper;

	public Course selectById2(int id) {
		// TODO Auto-generated method stub
		return mapper.selectById2(id);
	}
	public void update2(Course course) {
		// TODO Auto-generated method stub
		mapper.update2(course);
	}
	public void add2(Course course) {
		// TODO Auto-generated method stub
		mapper.add2(course);
	}
	public void delete2(int id) {
		// TODO Auto-generated method stub
		mapper.delete2(id);
	}
	public Integer selectCount() {
		// TODO Auto-generated method stub
		return mapper.selectCount();
	}
	public List<Video> selectAllLimit(Integer page, Integer num) {
		// TODO Auto-generated method stub
		return mapper.selectAllLimit(page, num);
	}

	
	
	
	
	
	
}
