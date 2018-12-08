package cn.edu.nuc.ssm.entity;
/**
 * 透视科
 * @author Administrator
 *
 */
public class Perspective {
    private String id;

    private String chest;

    private String bmode;

    private String userid;

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

    public String getChest() {
        return chest;
    }

    public void setChest(String chest) {
        this.chest = chest == null ? null : chest.trim();
    }

    public String getBmode() {
        return bmode;
    }

    public void setBmode(String bmode) {
        this.bmode = bmode == null ? null : bmode.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getHealthtype() {
        return healthtype;
    }

    public void setHealthtype(String healthtype) {
        this.healthtype = healthtype == null ? null : healthtype.trim();
    }

	@Override
	public String toString() {
		return "Perspective [id=" + id + ", chest=" + chest + ", bmode=" + bmode + ", userid=" + userid
				+ ", healthtype=" + healthtype + "]";
	}
    
}