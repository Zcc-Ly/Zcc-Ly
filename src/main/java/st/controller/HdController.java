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

import st.bean.HD;
import st.bean.Msg;
import st.bean.stust;
import st.service.HdService;
import st.service.stustService;

@Controller
public class HdController {
	
	@Autowired
	HdService hdService;
	
	@Autowired
	stustService ssService;

	@RequestMapping("/Hd")
	@ResponseBody
	public Msg geAlltHd(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Model model)
	{
		PageHelper.startPage(pn, 5);
		List<HD> hd = hdService.getAll();
		PageInfo page = new PageInfo(hd, 5);
		return Msg.success().add("pageInfo", page);
	}
	
	@RequestMapping(value="/savehd" ,method=RequestMethod.POST)
	@ResponseBody
	public Msg saveHd(HD hd) {
		hdService.saveHd(hd);
		return Msg.success();
	}
	
	@RequestMapping(value="/hd/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getHd(@PathVariable("id")Integer id) {
		HD hd = hdService.getHd(id);
		return Msg.success().add("hd", hd);
	}
	
	@ResponseBody
	@RequestMapping(value="/updatehd/{id}",method=RequestMethod.PUT)
	public Msg updateHd(HD hd,HttpServletRequest request) {
		hdService.updateHd(hd);
		return Msg.success();
		
		
		
	}
	@ResponseBody
	@RequestMapping(value="/deletehd/{ids}",method=RequestMethod.DELETE)
	public Msg deleteHd(@PathVariable("ids")String ids) {
		Integer id = Integer.parseInt(ids);
		hdService.deleteHd(id);
		return Msg.success();
	}
	
	@RequestMapping(value="/ckhd/{id}",method=RequestMethod.GET)
	public ModelAndView ckhd(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("showHd");
		mav.addObject("id",id);
		return mav;
	}
	

	
	
	@RequestMapping(value="/ckhdforstu/{id}",method=RequestMethod.GET)
	public ModelAndView ckhdforstu(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ckhdforstu");
		mav.addObject("id",id);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/gethdBydw/{sId}",method=RequestMethod.GET)
	public Msg getHdBydw(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Integer sId,Model model) {
		System.out.println("调用");
		List<stust> sslist = ssService.getssBysId(sId);
		List<Integer> dws = new ArrayList<>();
		System.out.println(sslist.size());
		for(int i=0;i<sslist.size();i++) {
			dws.add(sslist.get(i).getSuStid());
		}
		List<HD> list = hdService.getHdByhddawei(dws);
		PageHelper.startPage(pn, 5);
		PageInfo page = new PageInfo(list, 5);
	
		return Msg.success().add("pageInfo", page);
	
	
	
	}
	
}
