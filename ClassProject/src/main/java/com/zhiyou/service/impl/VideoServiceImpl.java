package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.VideoMapper;
import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService{
	
	@Autowired
	VideoMapper mapper;
	
	
	public List<Video> findAll() {
		
		return mapper.findAll();
	}


	public void delete(int video_id) {
		// TODO Auto-generated method stub
		mapper.delete(video_id);
	}


	public Object selectByID(int video_id) {
		// TODO Auto-generated method stub
		return mapper.selectByID(video_id);
	}


	public void update(Video video) {
		// TODO Auto-generated method stub
		mapper.update(video);
	}


	public void add(Video video) {
		// TODO Auto-generated method stub
		mapper.add(video);
	}


	public Integer selectCount() {
		// TODO Auto-generated method stub
		return mapper.selectCount();
	}


	public List<Video> selectAllLimit(Integer page, Integer num) {
		// TODO Auto-generated method stub
		return mapper.selectAllLimit(page, num);
	}

	public List<Video> selectAllLike(String field,String name) {
		return mapper.selectAllLike(field,name);
	}
}
