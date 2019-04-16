package st.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import st.bean.Msg;
import st.bean.Pitcure;
import st.service.PitcureService;
import st.service.StudentService;

@Controller
public class PitcureController {

	@Autowired
	PitcureService pitcureService;
	
	public Msg savePitcure(@RequestParam(value="file",required=false) MultipartFile file,
			HttpServletRequest request) throws IllegalStateException, IOException {
		
		System.out.println("sss");
		
		String pathRoot = request.getSession().getServletContext().getRealPath("");
		String path="";
		if(!file.isEmpty()){
			//生成uuid作为文件名称
			//获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType=file.getContentType();
			//获得文件后缀名称
			String imageName=contentType.substring(contentType.indexOf("/")+1);
			path=imageName;
			System.out.println(path);
			file.transferTo(new File(pathRoot+path));
			
		}
		System.out.println(path);
		request.setAttribute("imagesPath", path);


		
		
		
		return null;
	}
	
	
	@RequestMapping("/savepcbyhId")
	public Msg savebyhId(@RequestParam(value="file",required=false) MultipartFile file,
			@RequestParam(value="pname") String pname,@RequestParam(value="hId") Integer hId,
			HttpServletRequest request) throws IllegalStateException, IOException {
		
		String site=file.getOriginalFilename();
		
		System.out.println(file.getOriginalFilename());
		System.out.println(pname);
		System.out.println(hId);
		pitcureService.savePcByhId(file,pname,site,hId);
		return Msg.success();
		
	}
	
	
	
	@RequestMapping("/savepcbysId")
	public String savebysId(@RequestParam(value="file",required=false) MultipartFile file,
			@RequestParam(value="pname") String pname,@RequestParam(value="sId") Integer sId,
			HttpServletRequest request) throws IllegalStateException, IOException {
		
		String site=file.getOriginalFilename();
		
		System.out.println(file.getOriginalFilename());
		System.out.println(pname);
		System.out.println(sId);
		pitcureService.savePcBysId(file,pname,site,sId);
		return null;
		
	}
	

	@RequestMapping("/hdPcbysId/{sId}")
	@ResponseBody
	public Msg getHdPitcurebysId(@PathVariable("sId")Integer sId) {
		List<Pitcure> list = pitcureService.getPitcureBysId(sId);
		return Msg.success().add("hdpc", list);
	}
	

	@RequestMapping("/hdPcbyhId/{hId}")
	@ResponseBody
	public Msg getHdPitcurebyhId(@PathVariable("hId")Integer hId) {
		System.out.println("请求活动");
		List<Pitcure> list = pitcureService.getPitcureByhId(hId);
		return Msg.success().add("hdpc", list);
	}
	

	@ResponseBody
	@RequestMapping(value="/deletepc/{ids}",method=RequestMethod.DELETE)
	public Msg deletePitcure(@PathVariable("ids")String ids) {
		Integer id = Integer.parseInt(ids);
		pitcureService.deletePc(id);
		return Msg.success();
	}
	

	
}
