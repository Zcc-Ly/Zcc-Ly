package st.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import st.bean.Admin;
import st.bean.Student;
import st.service.AdminService;
import st.service.StudentService;

@Controller
public class DisplayController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	StudentService stuService;
	
	@RequestMapping(value="/adminLogin")
	public ModelAndView adminLogin(String username,String password,HttpSession session) {
		Admin admin = new Admin();
		ModelAndView mav= new ModelAndView();
		String pwd = adminService.getPwdByadminName(username);
		if(password.equals(pwd)) {
			session.setAttribute("adminname", username);
			mav.addObject("adminname",username);
			mav.setViewName("allst");
			return mav;
		}else {
			 	mav.addObject("message","登录名和密码错误，请重新输入");
	            mav.setViewName("error");
	            return mav;
		}
	}
	@RequestMapping(value="stulogin")
	@ResponseBody
	public ModelAndView stuLogin(Integer sId,String password,HttpSession session) {
		Student stu = new Student();
		ModelAndView mav = new ModelAndView();
		String pwd = stuService.getpwdBys_id(sId);
		if(password.equals(pwd)) {
			stu = stuService.getstuBys_id(sId);
			session.setAttribute("stu",stu);
			mav.addObject("stu", stu);
			mav.setViewName("StuSt");
			return mav;
		}
		else {
			mav.addObject("message","登录名和密码错误，请重新输入");
            mav.setViewName("error2");
			return mav;
		}
		
	}
	
	
	@RequestMapping("/toallst")
	public String  toallst() {
		return "allst";
	}
	
	@RequestMapping("/toStust")
	public String toStust() {
		return "StuSt";
	}
	
	
	
	
}
