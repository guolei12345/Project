package cn.edu.nuc.ssm.entity;
/**
 * 化验科
 * @author Administrator
 *
 */
public class Test {
    private String id;

    private String userid;

    private String blood;

    private String urine;

    private String liver;

    private String healthtype;
    private Opinion opinion;
    private String compeny;
    public String getCompeny() {
		return compeny;
	}

	public void setCompeny(String compeny) {
		this.compeny = compeny;
	}
	public Opinion getOpinion() {
		return opinion;
	}

	public void setOpinion(Opinion opinion) {
		this.opinion = opinion;
	}
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood == null ? null : blood.trim();
    }

    public String getUrine() {
        return urine;
    }

    public void setUrine(String urine) {
        this.urine = urine == null ? null : urine.trim();
    }

    public String getLiver() {
        return liver;
    }

    public void setLiver(String liver) {
        this.liver = liver == null ? null : liver.trim();
    }

    public String getHealthtype() {
        return healthtype;
    }

    public void setHealthtype(String healthtype) {
        this.healthtype = healthtype == null ? null : healthtype.trim();
    }

	@Override
	public String toString() {
		return "Test [id=" + id + ", userid=" + userid + ", blood=" + blood + ", urine=" + urine + ", liver=" + liver
				+ ", healthtype=" + healthtype + "]";
	}
    
}