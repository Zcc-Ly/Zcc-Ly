package st.controller;

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
import st.bean.Notice;
import st.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@ResponseBody
	@RequestMapping("/nts")
	public Msg getNotices(@RequestParam(value="pn",defaultValue="1")
	Integer pn,Model model){
		
		PageHelper.startPage(pn, 5);
		List<Notice> nts = noticeService.getAll(); 
		PageInfo page = new PageInfo(nts, 5);
		return Msg.success().add("pageInfo", page);
	}

	@RequestMapping(value="/savent",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveNotice(Notice nt) {
		System.out.println("新增");
		noticeService.saveNotice(nt);
		return Msg.success();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/nt/{id}",method=RequestMethod.GET)
	public Msg getNotice(@PathVariable("id")Integer id) {
		Notice nt = noticeService.getNt(id);
		return Msg.success().add("nt", nt);
	}
	
	@ResponseBody
	@RequestMapping(value="/updatent/{id}",method=RequestMethod.PUT)
	public Msg updateNotice(Notice nt,HttpServletRequest request) {
		noticeService.updateNt(nt);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/deletent/{ids}",method=RequestMethod.DELETE)
	public Msg deleteNotice(@PathVariable("ids")String ids) {
		Integer id = Integer.parseInt(ids);
		noticeService.delteNt(id);
		return Msg.success();
	}
	
	@RequestMapping(value="/chnotice/{id}",method=RequestMethod.GET)
	public ModelAndView cknotice(@PathVariable("id")Integer id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Notice");
		mav.addObject("id",id);
		return mav;
	}
	
	@RequestMapping(value="/notice/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getNotice2(@PathVariable("id")Integer id) {
		Notice notice = noticeService.getNt(id);
		return Msg.success().add("nt", notice);
		
	}
	
	
	
}
