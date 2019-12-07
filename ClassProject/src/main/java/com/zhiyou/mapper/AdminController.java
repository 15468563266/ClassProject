package com.zhiyou.mapper;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Admin;
import com.zhiyou.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;

	@RequestMapping("admin_login")
	public String login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String accounts = req.getParameter("accounts");
		String password = req.getParameter("password");
		Admin admin = service.adminLogin(req, accounts, password);
		req.getSession().setAttribute("admin", admin);
		if (admin != null) {
			return "redirect:video";
		} else {
			resp.getWriter().write("success".toCharArray());
			return "redirect:video";
		}
		
	}

}
