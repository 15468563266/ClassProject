package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService service;

	@RequestMapping(value = "/userLogin")
	public void login(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		String accounts = req.getParameter("email");
		String password = req.getParameter("password");
		User user = service.selectByAccounts(req, accounts, password);
		if (user != null) {
			req.getSession().setAttribute("user", user);
			resp.getWriter().write("sucess".toCharArray());
		}
	}

	@RequestMapping(value = "/loginout")
	public void loginout(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		req.getSession().setAttribute("user", null);
		resp.sendRedirect("index.jsp");

	}

	@RequestMapping(value = "/usershow")
	public String usershow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "userCenter";

	}

	@ResponseBody
	@RequestMapping("add")
	public String add(User user, HttpServletRequest req, HttpServletResponse resp) {
		service.add(user);
		return "success";
	}

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

	@RequestMapping("selectById")
	public String selectById(Integer id, HttpServletRequest req, HttpServletResponse rep) {
		req.setAttribute("user", service.selectById(id));
		return "update";
	}

	@RequestMapping("update")
	public String update(User user, HttpServletRequest req, HttpServletResponse rep) {
		service.update(user);
		return "redirect:show";
	}

	@RequestMapping(value = "/updateshow")
	public String updateshow(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "userUpdate";

	}
}
