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
import st.bean.ST;
import st.bean.stust;
import st.service.ClubService;
import st.service.stustService;

@Controller
public class ClubController {

	@Autowired
	ClubService clubService;
	
	@Autowired
	stustService stustservie;
	
	@RequestMapping("/st")
	@ResponseBody
	public Msg getClubWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) 
	{
		
				PageHelper.startPage(pn, 5);
				// startPage后面紧跟的这个查询就是一个分页查询
				List<ST> clubs = clubService.getAll();
				// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
				// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
				PageInfo page = new PageInfo(clubs, 5);
				return Msg.success().add("pageInfo", page);
	}
	
	//保存社团
	@RequestMapping(value="/saveClub" ,method=RequestMethod.POST)
	@ResponseBody
	public Msg saveClub(ST club) {
		clubService.saveClub(club);
		return Msg.success();
	}
	
	/*
	 * 根据id查社团信息
	 */
	@RequestMapping(value="/club/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getClub(@PathVariable("id")Integer id) {
		ST club = clubService.getClub(id);
		return Msg.success().add("club", club);
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/updateclub/{stno}",method=RequestMethod.PUT)
	public Msg updateClub(ST club,HttpServletRequest request) {
		clubService.updateClub(club);
		return Msg.success();
	}
	

	@ResponseBody
	@RequestMapping(value="/deleteclub/{ids}",method=RequestMethod.DELETE)
	public Msg deleteClub(@PathVariable("ids")String ids) {
		Integer id = Integer.parseInt(ids);
		clubService.deleteClub(id);
		return Msg.success();
	}
	
	@RequestMapping("/clubs")
	@ResponseBody
	public Msg getAllClubs() {
		List<ST> list = clubService.getAll();
		return Msg.success().add("clubs", list);
	}
	
	@RequestMapping(value="/ckst/{id}",method=RequestMethod.GET)
	public ModelAndView ckst(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("showClub");
		mav.addObject("id",id);
		return mav;
	}
	
	@RequestMapping(value="/ckstforStu/{id}",method=RequestMethod.GET)
	public ModelAndView ckstforStu(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ckstforStu");
		mav.addObject("id",id);
		return mav;
	}
	
	//查询id，获得stust中的stId，再返回社团数据
//	public stforstu(Integer sId) {
	//	List<stust> ss = stustservice.getssBysId(sId);
		
//	}
	
	@ResponseBody
	@RequestMapping(value="/getStuSt/{sId}",method=RequestMethod.GET)
	public Msg getSTBySid(@PathVariable("sId")Integer sId,@RequestParam(value="pn",defaultValue="1")
			Integer pn,Model model) {
		List <stust>  ss = stustservie.getssBysId(sId);
		List<Integer> ids = new ArrayList<>();
		for(int i = 0; i< ss.size();i++) {
			int a =	ss.get(i).getSuStid();
			ids.add(a);
		}
		List<ST> list = clubService.getclubBysId(ids);
		PageHelper.startPage(pn, 100);
		PageInfo page = new PageInfo(list, 100);
		return Msg.success().add("pageInfo", page);
	}
	
	
	
	
	
	
	
	
}
