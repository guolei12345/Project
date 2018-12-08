package cn.edu.nuc.ssm.entity;
/**
 * 外科
 * @author Administrator
 *
 */
public class Out {
    private String id;

    private String height;

    private String weight;

    private String lymph;

    private String limb;

    private String urinary;

    private String anus;

    private String thyroid;

    private String joint;

    private String skin;

    private String spine;

    private String flatfoot;

    private String other;

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

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height == null ? null : height.trim();
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight == null ? null : weight.trim();
    }

    public String getLymph() {
        return lymph;
    }

    public void setLymph(String lymph) {
        this.lymph = lymph == null ? null : lymph.trim();
    }

    public String getLimb() {
        return limb;
    }

    public void setLimb(String limb) {
        this.limb = limb == null ? null : limb.trim();
    }

    public String getUrinary() {
        return urinary;
    }

    public void setUrinary(String urinary) {
        this.urinary = urinary == null ? null : urinary.trim();
    }

    public String getAnus() {
        return anus;
    }

    public void setAnus(String anus) {
        this.anus = anus == null ? null : anus.trim();
    }

    public String getThyroid() {
        return thyroid;
    }

    public void setThyroid(String thyroid) {
        this.thyroid = thyroid == null ? null : thyroid.trim();
    }

    public String getJoint() {
        return joint;
    }

    public void setJoint(String joint) {
        this.joint = joint == null ? null : joint.trim();
    }

    public String getSkin() {
        return skin;
    }

    public void setSkin(String skin) {
        this.skin = skin == null ? null : skin.trim();
    }

    public String getSpine() {
        return spine;
    }

    public void setSpine(String spine) {
        this.spine = spine == null ? null : spine.trim();
    }

    public String getFlatfoot() {
        return flatfoot;
    }

    public void setFlatfoot(String flatfoot) {
        this.flatfoot = flatfoot == null ? null : flatfoot.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
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
		return "Out [id=" + id + ", height=" + height + ", weight=" + weight + ", lymph=" + lymph + ", limb=" + limb
				+ ", urinary=" + urinary + ", anus=" + anus + ", thyroid=" + thyroid + ", joint=" + joint + ", skin="
				+ skin + ", spine=" + spine + ", flatfoot=" + flatfoot + ", other=" + other + ", userid=" + userid
				+ ", healthtype=" + healthtype + "]";
	}
    
}