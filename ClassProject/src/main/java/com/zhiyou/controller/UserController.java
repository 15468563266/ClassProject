package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
import com.zhiyou.util.FtpUtil;

@Controller
public class UserController {

	@Autowired
	UserService service;

	// 登录
	@RequestMapping(value = "/userLogin")
	public void login(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		String accounts = req.getParameter("email");
		String password = req.getParameter("password");
		User user = service.selectByAccounts(req, accounts, password);
		if (user != null) {
			req.getSession().setAttribute("user", user);
			resp.getWriter().write("sucess".toCharArray());
		} else {
			resp.getWriter().write(req.getAttribute("msg").toString().toCharArray());
		}
	}

	// 退出
	@RequestMapping(value = "/loginout")
	public void loginout(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		req.getSession().setAttribute("user", null);
		resp.sendRedirect("index.jsp");

	}

	// 跳转到个人中心展示
	@RequestMapping(value = "/usershow")
	public String usershow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "userCenter";

	}

	// 用户注册
	@ResponseBody
	@RequestMapping("add")
	public String add(User user, HttpServletRequest req, HttpServletResponse resp) {
		service.add(user);
		return "success";
	}

	// 查询所有用户
	@ResponseBody
	@RequestMapping("selectAll")
	public String selectAll(HttpServletRequest req, HttpServletResponse rep) {
		String aString = null;
		List<User> list = service.selectAll();
		if (list == null) {
			aString = "false";
		} else {
			aString = "success";
		}
		return aString;
	}

	// 根据id查询
	@RequestMapping("selectById")
	public String selectById(Integer id, HttpServletRequest req, HttpServletResponse rep) throws Exception {
		req.setCharacterEncoding("utf-8");
		req.setAttribute("user", service.selectById(id));
		return "userUpdate";
	}

	// 更新用户资料
	@RequestMapping("userUpdate")
	public String update(User user1, Integer id, HttpServletRequest req, HttpServletResponse rep) throws Exception {
		req.setCharacterEncoding("utf-8");
		service.update(user1);
		req.getSession().setAttribute("user", service.selectById(id));
		return "redirect:usershow";
	}

	// 跳转到更新页面
	@RequestMapping(value = "/updateshow")
	public String updateshow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "userUpdate";
	}

	// 跳转到更改密码页面
	@RequestMapping(value = "/passwordshow")
	public String passwordshow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "passwordUpdate";
	}

	// 跳转到更改密码页面
	@RequestMapping(value = "/photoshow")
	public String photoshow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "photoUpdate";
	}

	// 修改密码
	@RequestMapping("passwordUpdate")
	public String passwordUpdate(User user2, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		service.update(user2);
		req.getSession().setAttribute("user", service.selectById(user2.getId()));
		return "redirect:loginout";
	}

	// 更改用户头像
	@RequestMapping("upload.do")
	public String upload(MultipartFile image_file, Integer id, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		String imgurl = FtpUtil.upload(image_file.getInputStream(), image_file.getOriginalFilename());
		service.update(new User(id, null, null, null, null, null, null, null, imgurl, null));
		req.getSession().setAttribute("user", service.selectById(id));
		return "redirect:usershow";
	}
}
