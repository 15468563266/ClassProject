package com.zhiyou.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.UserMapper;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
import com.zhiyou.util.MD5;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper mapper;

	public void add(User user) {
		mapper.add(user);

	}

	public void update(User user) {
		mapper.update(user);

	}

	public List<User> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	public User selectById(Integer id) {
		// TODO Auto-generated method stub
		return mapper.selectById(id);
	}

	public User selectByAccounts(HttpServletRequest req, String accounts, String password) {
		MD5 md5 = MD5.getInstance();
		User user = mapper.selectByAccounts(req, accounts, password);
		if (user != null) {
			if (user.getPassword().equals(md5.getMD5(password))) {
			} else {
				req.setAttribute("msg", "密码错误，请重新输入");
				return null;
			}
		} else {
			req.setAttribute("msg", "用户不存在");
			return null;
		}
		return user;
	}

	public User selectByAccounts(String accounts) {
		// TODO Auto-generated method stub
		return mapper.selectByAccounts(accounts);
	}

}
