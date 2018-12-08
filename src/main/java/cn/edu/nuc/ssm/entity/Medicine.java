package cn.edu.nuc.ssm.entity;
/**
 * 内科
 * @author Administrator
 *
 */
public class Medicine {
    private String id;

    private String userid;

    private String bloodpressure;

    private String development;

    private String nerve;

    private String lung;

    private String heart;

    private String abdomen;

    private String liver;

    private String spleen;

    private String other;
    
    private String healthtype;
    private String compeny;
    public String getCompeny() {
		return compeny;
	}

	public void setCompeny(String compeny) {
		this.compeny = compeny;
	}

	public String getHealthtype() {
		return healthtype;
	}

	public void setHealthtype(String healthtype) {
		this.healthtype = healthtype;
	}

	private Opinion opinion;

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

    public String getBloodpressure() {
        return bloodpressure;
    }

    public void setBloodpressure(String bloodpressure) {
        this.bloodpressure = bloodpressure == null ? null : bloodpressure.trim();
    }

    public String getDevelopment() {
        return development;
    }

    public void setDevelopment(String development) {
        this.development = development == null ? null : development.trim();
    }

    public String getNerve() {
        return nerve;
    }

    public void setNerve(String nerve) {
        this.nerve = nerve == null ? null : nerve.trim();
    }

    public String getLung() {
        return lung;
    }

    public void setLung(String lung) {
        this.lung = lung == null ? null : lung.trim();
    }

    public String getHeart() {
        return heart;
    }

    public void setHeart(String heart) {
        this.heart = heart == null ? null : heart.trim();
    }

    public String getAbdomen() {
        return abdomen;
    }

    public void setAbdomen(String abdomen) {
        this.abdomen = abdomen == null ? null : abdomen.trim();
    }

    public String getLiver() {
        return liver;
    }

    public void setLiver(String liver) {
        this.liver = liver == null ? null : liver.trim();
    }

    public String getSpleen() {
        return spleen;
    }

    public void setSpleen(String spleen) {
        this.spleen = spleen == null ? null : spleen.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
    }

}