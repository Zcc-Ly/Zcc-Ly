package st.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import st.bean.Msg;
import st.bean.SQ;
import st.bean.Student;
import st.bean.stust;
import st.service.SqService;
import st.service.StudentService;
import st.service.stustService;

@Controller
public class SqController {

	@Autowired
	SqService sqService;
	
	@Autowired
	StudentService stuService;
	 
	@Autowired
	stustService ssService;
	@ResponseBody
	@RequestMapping(value="/sq",method=RequestMethod.GET)
	public Msg sq(Integer sqStid,Integer sqsId) {
		System.out.println("申请成功"+sqStid+" "+sqsId);
		sqService.sqinsert(sqsId,sqStid);
		return Msg.success();
	}
	
	@RequestMapping(value="/ckstforStu/ckstPersonforstu/cksq/{id}")
	public ModelAndView cksq(@PathVariable("id")Integer id) {
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("stSQ");
		mav.addObject("id",id);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/getsqStu/{stId}")
	public Msg getStuBySq(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Integer stId,Model model) {
		List<SQ> sq = sqService.getsqBystId(stId);
		List<Integer> sIds = new ArrayList<>();
		for(int i=0;i<sq.size();i++) {
			System.out.println(sq.get(i).getSqSid());
			sIds.add(sq.get(i).getSqSid());
		}
		List<Student> stus = stuService.getstuBys_id(sIds);
		PageInfo page = new PageInfo(stus, 100);
		return Msg.success().add("pageInfo", page);
		
	}
	
	@ResponseBody
	@RequestMapping(value="/agreeSq/{id}",method=RequestMethod.POST)
	public Msg agreeSq(Integer stId,Integer sId) {
		
		sqService.agreeSQ(sId, stId);
		ssService.agreeSQ_stustupdate(sId, stId);
		return Msg.success();
	}
	
	
}
