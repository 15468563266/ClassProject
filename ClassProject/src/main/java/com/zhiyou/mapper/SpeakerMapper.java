package com.zhiyou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;

public interface SpeakerMapper {

	

	Speaker selectByID(int id);

	void update(Speaker speaker);

	void delete(int id);

	void add(Speaker speaker);

	List<Video> selectAllLimit(@Param("page")Integer page,@Param("num")Integer num);

	Integer selectCount();

}
