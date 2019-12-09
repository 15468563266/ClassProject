package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Course;
import com.zhiyou.model.Video;

public interface CourserService {

	

	Course selectById2(int id);

	void update2(Course course);

	void add2(Course course);

	void delete2(int id);

	Integer selectCount();

	List<Video> selectAllLimit(@Param("page")Integer page,@Param("num")Integer num);

}
