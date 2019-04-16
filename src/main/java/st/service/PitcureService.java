package st.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import st.bean.Pitcure;
import st.dao.PitcureMapper;
@Service
public class PitcureService {

	@Autowired
	PitcureMapper pitcureMapper;

	public void savePcBysId(MultipartFile file, String pname, String site, Integer sId) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		Pitcure pc = new Pitcure();
		String filePath ="D:\\Eclipse_workspace\\zcc-st\\src\\main\\webapp\\static\\image";
		String originalFilename = file.getOriginalFilename();
		
		Random ne = new Random();
		int x = ne.nextInt(30000)+10;
		String newFileName =x+".jpg";
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);
		pc.setPname(pname);
		pc.setSite(newFileName);
		pc.setSid(sId);
		pitcureMapper.insertSelective(pc);
		System.out.println(pc);
	}
	
	
	public List<Pitcure> getPitcureBysId(Integer sId) {
		return pitcureMapper.selectBysId(sId);
	}


	public void savePcByhId(MultipartFile file, String pname, String site, Integer hId) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		
		Pitcure pc = new Pitcure();
		String filePath ="D:\\Eclipse_workspace\\zcc-st\\src\\main\\webapp\\static\\image";
		String originalFilename = file.getOriginalFilename();
		
		Random ne = new Random();
		int x = ne.nextInt(30000)+10;
		String newFileName =x+".jpg";
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);
		pc.setPname(pname);
		pc.setSite(newFileName);
		pc.setHid(hId);
		pitcureMapper.insertSelective(pc);
		System.out.println(pc);
		
	}


	public List<Pitcure> getPitcureByhId(Integer hId) {
		// TODO Auto-generated method stub
		return pitcureMapper.selectByhId(hId);
	}


	public void deletePc(Integer id) {
		// TODO Auto-generated method stub
		pitcureMapper.deleteByPrimaryKey(id);
		
	}


}
