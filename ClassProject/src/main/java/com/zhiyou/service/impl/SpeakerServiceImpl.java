package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zhiyou.mapper.SpeakerMapper;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.SpeakerService;
@Service
public class SpeakerServiceImpl implements SpeakerService {
	
	@Autowired
	SpeakerMapper mapper;
	
	
	public Speaker selectByID(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByID(id);
	}

	public void update(Speaker speaker) {
		// TODO Auto-generated method stub
		mapper.update(speaker);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		mapper.delete(id);
	}

	public void add(Speaker speaker) {
		// TODO Auto-generated method stub
		mapper.add(speaker);
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
