package st.bean;

public class HD {
    private Integer id;

    private String hdname;

    private String hdday;

    private String hdplace;

    private Integer hddanwei;

    private String hdneirong;
    
    //查询活动时同时查询社团信息
    private ST st;

    public ST getSt() {
		return st;
	}

	public void setSt(ST st) {
		this.st = st;
	}
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHdname() {
        return hdname;
    }

    public void setHdname(String hdname) {
        this.hdname = hdname == null ? null : hdname.trim();
    }

    public String getHdday() {
        return hdday;
    }

    public void setHdday(String hdday) {
        this.hdday = hdday == null ? null : hdday.trim();
    }

    public String getHdplace() {
        return hdplace;
    }

    public void setHdplace(String hdplace) {
        this.hdplace = hdplace == null ? null : hdplace.trim();
    }

    public Integer getHddanwei() {
        return hddanwei;
    }

    public void setHddanwei(Integer hddanwei) {
        this.hddanwei = hddanwei;
    }

    public String getHdneirong() {
        return hdneirong;
    }

    public void setHdneirong(String hdneirong) {
        this.hdneirong = hdneirong == null ? null : hdneirong.trim();
    }

    
    
    
	

	@Override
	public String toString() {
		return "HD [id=" + id + ", hdname=" + hdname + ", hdday=" + hdday + ", hdplace=" + hdplace + ", hddanwei="
				+ hddanwei + ", hdneirong=" + hdneirong + ", st=" + st + "]";
	}
    
    
    
    
    
}