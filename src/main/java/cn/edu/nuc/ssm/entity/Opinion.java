package cn.edu.nuc.ssm.entity;

public class Opinion {
    private String oid;

    private String department;

    private String comp;

    private String diseasename;

    private String healthtype;

    private String userid;
    
    private DUser user;
    
    public DUser getUser() {
		return user;
	}

	public void setUser(DUser user) {
		this.user = user;
	}

	public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid == null ? null : oid.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getComp() {
        return comp;
    }

    public void setComp(String comp) {
        this.comp = comp == null ? null : comp.trim();
    }

    public String getDiseasename() {
        return diseasename;
    }

    public void setDiseasename(String diseasename) {
        this.diseasename = diseasename == null ? null : diseasename.trim();
    }

    public String getHealthtype() {
        return healthtype;
    }

    public void setHealthtype(String healthtype) {
        this.healthtype = healthtype == null ? null : healthtype.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

	@Override
	public String toString() {
		return "Opinion [oid=" + oid + ", department=" + department + ", comp=" + comp + ", diseasename=" + diseasename
				+ ", healthtype=" + healthtype + ", userid=" + userid + "]";
	}
    
}