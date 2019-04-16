package st.bean;

public class stust {
    private Integer id;

    private Integer suSid;

    private Integer suStid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSuSid() {
        return suSid;
    }

    public void setSuSid(Integer suSid) {
        this.suSid = suSid;
    }

    public Integer getSuStid() {
        return suStid;
    }

    public void setSuStid(Integer suStid) {
        this.suStid = suStid;
    }

	@Override
	public String toString() {
		return "stust [id=" + id + ", suSid=" + suSid + ", suStid=" + suStid + "]";
	}
    
    
}
