package st.bean;

public class Student {
    private Integer id;

    private String sName;

    private Integer sId;

    private Integer cId;

    public ST getSt() {
		return st;
	}

	public void setSt(ST st) {
		this.st = st;
	}

	private String sMajor;

    private String gender;

    private String sTime;

    private String pwd;
    
    //查询学生同时查询社团信息
    private ST st;
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName == null ? null : sName.trim();
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getsMajor() {
        return sMajor;
    }

    public void setsMajor(String sMajor) {
        this.sMajor = sMajor == null ? null : sMajor.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getsTime() {
        return sTime;
    }

    public void setsTime(String sTime) {
        this.sTime = sTime == null ? null : sTime.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

	@Override
	public String toString() {
		return "Student [id=" + id + ", sName=" + sName + ", sId=" + sId + ", cId=" + cId + ", sMajor=" + sMajor
				+ ", gender=" + gender + ", sTime=" + sTime + ", pwd=" + pwd + ", st=" + st + "]";
	}
    
    
}