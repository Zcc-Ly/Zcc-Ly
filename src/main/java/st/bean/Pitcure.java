package st.bean;


import org.springframework.web.multipart.MultipartFile;

public class Pitcure {
    private Integer id;

    private String pname;

    private String site;

    private Integer hid;

    private Integer sid;


	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site == null ? null : site.trim();
    }

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

	@Override
	public String toString() {
		return "Pitcure [id=" + id + ", pname=" + pname + ", site=" + site + ", hid=" + hid + ", sid=" + sid + "]";
	}


    
    
    
}