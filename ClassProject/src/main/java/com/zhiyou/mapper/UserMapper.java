package com.zhiyou.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.User;

public interface UserMapper {
	void add(User user); // 方法名保持与对应mapper中的id一致

	void update(User user); // 参数与mapper中的parameterType一致

	List<User> selectAll(); // 返回值与mapper中的resultType一致

	User selectById(Integer id);

	User selectByAccounts(HttpServletRequest req, @Param("accounts") String accounts,
			@Param("password") String password);
}
