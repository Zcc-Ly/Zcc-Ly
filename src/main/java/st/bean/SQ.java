package st.bean;

public class SQ {
    private Integer id;

    private Integer sqSid;

    private Integer sqStid;

    private Integer zt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSqSid() {
        return sqSid;
    }

    public void setSqSid(Integer sqSid) {
        this.sqSid = sqSid;
    }

    public Integer getSqStid() {
        return sqStid;
    }

    public void setSqStid(Integer sqStid) {
        this.sqStid = sqStid;
    }

    public Integer getZt() {
        return zt;
    }

    public void setZt(Integer zt) {
        this.zt = zt;
    }

	@Override
	public String toString() {
		return "SQ [id=" + id + ", sqSid=" + sqSid + ", sqStid=" + sqStid + ", zt=" + zt + "]";
	}
    
    
}