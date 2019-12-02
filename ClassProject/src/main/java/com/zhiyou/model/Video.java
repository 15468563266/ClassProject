package com.zhiyou.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Video {

	private int video_id;
	private String title;
	private String detail;
	private int time;
	private int speaker_id;
	private int course_id;
	private String video_url;
	private String image_url;
	private int play_num;
	
}
