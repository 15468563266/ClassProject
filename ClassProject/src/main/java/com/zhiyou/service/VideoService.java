package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Video;

public interface VideoService {
	
	
	
	List<Video> findAll();

	void delete(int video_id);

	Object selectByID(int video_id);

	void update(Video video);

	void add(Video video);

	Integer selectCount();

	List<Video> selectAllLimit(@Param("page")Integer page,@Param("num")Integer num);
	List<Video> selectAllLike(@Param("field") String field,@Param("name") String name);
}
