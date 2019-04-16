package st.bean;

public class ST {
    private Integer stno;

    private String stname;

    private String stfuzeren;

    private String fuzerenPhone;

    private String zgdanwei;

    private String chengliday;

    private String stjianjie;

    public Integer getStno() {
        return stno;
    }

    public void setStno(Integer stno) {
        this.stno = stno;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname == null ? null : stname.trim();
    }

    public String getStfuzeren() {
        return stfuzeren;
    }

    public void setStfuzeren(String stfuzeren) {
        this.stfuzeren = stfuzeren == null ? null : stfuzeren.trim();
    }

    public String getFuzerenPhone() {
        return fuzerenPhone;
    }

    public void setFuzerenPhone(String fuzerenPhone) {
        this.fuzerenPhone = fuzerenPhone == null ? null : fuzerenPhone.trim();
    }

    public String getZgdanwei() {
        return zgdanwei;
    }

    public void setZgdanwei(String zgdanwei) {
        this.zgdanwei = zgdanwei == null ? null : zgdanwei.trim();
    }

    public String getChengliday() {
        return chengliday;
    }

    public void setChengliday(String chengliday) {
        this.chengliday = chengliday == null ? null : chengliday.trim();
    }

    public String getStjianjie() {
        return stjianjie;
    }

    public void setStjianjie(String stjianjie) {
        this.stjianjie = stjianjie == null ? null : stjianjie.trim();
    }

	@Override
	public String toString() {
		return "ST [stno=" + stno + ", stname=" + stname + ", stfuzeren=" + stfuzeren + ", fuzerenPhone=" + fuzerenPhone
				+ ", zgdanwei=" + zgdanwei + ", chengliday=" + chengliday + ", stjianjie=" + stjianjie + "]";
	}
    
    
}