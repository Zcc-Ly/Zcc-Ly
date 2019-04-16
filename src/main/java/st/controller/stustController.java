package st.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import st.bean.Msg;
import st.bean.Student;
import st.bean.stust;
import st.dao.stustMapper;
import st.service.SqService;
import st.service.StudentService;
import st.service.stustService;

@Controller
public class stustController {

	@Autowired
	stustMapper stustmapper;
	@Autowired
	stustService stustservie;
	@Autowired
	StudentService studentService;
	
	@ResponseBody
	@RequestMapping(value="/getststuids/{id}",method=RequestMethod.GET)
	public Msg getstu_id(@PathVariable("id")Integer id) {
		List<stust> list = stustservie.getssBystId(id);
		return Msg.success().add("stuids", list);
		
	}
	
	@RequestMapping(value="/deletestust/{ids}",method=RequestMethod.POST)
	@ResponseBody
	public Msg deleteStust(Integer suSid,Integer suStid)  {
		System.out.println("删除记录");
		stust st = new stust();
		System.out.println(suSid);
		System.out.println(suStid);
		Student stu =	studentService.getStuBys_id(suSid);
		Integer stid =  stu.getId();

		
		st.setSuSid(stid);
		st.setSuStid(suStid);
		System.out.println(st);
		stustservie.deletestust(st);
		return Msg.success();
	}
	
	
	
	//quitclub
	@RequestMapping(value="/quitclub/{sId}",method=RequestMethod.POST)
	@ResponseBody
	public Msg quictClub(Integer sId,Integer stId) {
		stust st = new stust();
		System.out.println(sId+"+"+stId);
		st.setSuSid(sId);
		st.setSuStid(stId);
		stustservie.deletestust(st);
		return Msg.success();
	}
	
	
	
	

	
	
	
	
}
