package st.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import st.bean.Msg;
import st.bean.Student;
import st.bean.stust;
import st.service.StudentService;
import st.service.stustService;

@Controller
public class StudentController {

	/*
	 * 查询所有学生数据（分页查询）
	 */
	@Autowired
	StudentService studentService;
	
	@Autowired
	stustService stustservice;
	
	@RequestMapping("/stus")
	@ResponseBody
	public Msg getStudents(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Model model)
	{
		PageHelper.startPage(pn, 5);
		List<Student> stus = studentService.getAll();
		PageInfo page = new PageInfo(stus, 5);
		return Msg.success().add("pageInfo", page);
	}
	
	
	/*
	 * 学生保存
	 */
	@RequestMapping(value="/saveStu" ,method=RequestMethod.POST)
	@ResponseBody
	public Msg saveStu(Student student) {
		System.out.println(student);
		studentService.saveStu(student);
		return Msg.success();
	}
	
	/**
	 * 检查学号是否重复
	 * @param empName
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/checkuser")
	public Msg checkuser(@RequestParam("sId")Integer sId){
		//先判断用户名是否是合法的表达式;
	
		//数据库用户名重复校验
		boolean b = studentService.checkUser(sId);
		if(b){
			return Msg.success();
		}else{
			return Msg.fail().add("va_msg", "该学号已有");
		}
	}
	
	
	/**
	 * 根据id查询学生
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/stu/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getStu(@PathVariable("id")Integer id){
		
		Student stu =studentService.getStu(id);
		return Msg.success().add("stu", stu);
	}
	
	/*
	 * 更新学生信息
	 */
	@ResponseBody
	@RequestMapping(value="/updatestu/{id}",method=RequestMethod.PUT)
	public Msg updateStu(Student student,HttpServletRequest request) {
		System.out.println(student);
		studentService.upadateStu(student);
		return Msg.success();
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/deletestu/{ids}",method=RequestMethod.DELETE)
	public Msg deleteStu(@PathVariable("ids")String ids) {
			Integer id = Integer.parseInt(ids);
			studentService.deleteEmp(id);
		return Msg.success();
		
	}
	
	@RequestMapping(value="/ckst/ckstPerson/{id}",method=RequestMethod.GET)
	public ModelAndView ckstPerson(@PathVariable("id")Integer id) {
		System.out.println("");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ckstperson");
		mav.addObject("id",id);
		return mav;
	}
	
	//通过社团id查学生信息
//	@RequestMapping(value="/getstubyst/{id}" ,method=RequestMethod.GET)
	@ResponseBody
	public Msg getStuByc_id(@PathVariable("id")Integer id){
		List<Student> list = studentService.getStuByc_id(id);
		return Msg.success().add("stperson", list);
		
		
	}
	
	
	@RequestMapping(value="/stusbyc_id/{id}" ,method=RequestMethod.GET)
	@ResponseBody
	public Msg getStuByc_id(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Model model,@PathVariable("id")Integer id)
	{
		List<Student> list = studentService.getStuByc_id(id);
		PageHelper.startPage(pn, 5);
		PageInfo page = new PageInfo(list, 5);
		return Msg.success().add("pageInfo", page);
	}
	
	@ResponseBody
	@RequestMapping(value="/getststu/{ids}",method=RequestMethod.GET)
	public Msg getStusBystId(@PathVariable("ids")String ids,@RequestParam(value="pn",defaultValue="1")
	Integer pn,Model model) {
		if(ids.contains(",")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split(",");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
		}
			
			List<Student> list =studentService.getStuBystId(del_ids);
			PageHelper.startPage(pn, 100);
			PageInfo page = new PageInfo(list, 100);
			return Msg.success().add("pageInfo", page);
	}else {
		Integer id = Integer.parseInt(ids);
		Student stu = studentService.getStu(id);
		
		return Msg.success().add("ststu", stu);
	}
	
		
	}
	
	
	
	
	//通过学号查学生信息；
	@RequestMapping(value="/savess",method=RequestMethod.POST)
	@ResponseBody
	public Msg getStuBys_id(Integer sId,
	Integer stid){
		 Student stu = studentService.getStuBys_id(sId);
		 Integer stuid = stu.getId();
		 stust ss = new stust();
		 ss.setSuSid(stuid);
		 ss.setSuStid(stid);
		 stustservice.savestu(ss);
		return Msg.success();
		
	}
	

	
	
	
	@RequestMapping(value="/ckstforStu/ckstPersonforstu/{id}",method=RequestMethod.GET)
	public ModelAndView ckstPersonfoStu(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("stPersonforStu");
		mav.addObject("id",id);
		return mav;
	}
	
	
	
	
	
}

