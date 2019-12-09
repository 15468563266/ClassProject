package com.zhiyou.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;

public interface SpeakerService {

	

	Speaker selectByID(int id);

	void update(Speaker speaker);

	void delete(int id);

	void add(Speaker speaker);

	Integer selectCount();

	List<Video> selectAllLimit(@Param("page")Integer page,@Param("num")Integer num);

}
