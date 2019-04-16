package st.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.bean.Admin;
import st.dao.AdminMapper;

@Service
public class AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	public String getPwdByadminName(String name) {
		Admin admin = new Admin();
		 admin = adminMapper.selectByName(name);
		 String adminpwd = admin.getPwd();
		 return adminpwd;
	}
}
