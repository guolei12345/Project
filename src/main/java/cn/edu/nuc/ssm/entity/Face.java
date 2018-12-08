package cn.edu.nuc.ssm.entity;
/**
 * 五官科
 * @author Administrator
 *
 */
public class Face {
    private String id;

    private String userid;

    private String lefteye;

    private String righteye;

    private String legtcorrect;

    private String rightcorrect;

    private String colorblindness;

    private String eyedisease;

    private String leftears;

    private String rightears;

    private String earsdisease;

    private String smell;

    private String nosedisease;

    private String throat;

    private String stutter;

    private String dry;

    private String hypodontia;

    private String caries;

    private String other;

    private String helthtype;
    
    private DUser user;
    
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

	public DUser getUser() {
		return user;
	}

	public void setUser(DUser user) {
		this.user = user;
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

    public String getLefteye() {
        return lefteye;
    }

    public void setLefteye(String lefteye) {
        this.lefteye = lefteye == null ? null : lefteye.trim();
    }

    public String getRighteye() {
        return righteye;
    }

    public void setRighteye(String righteye) {
        this.righteye = righteye == null ? null : righteye.trim();
    }

    public String getLegtcorrect() {
        return legtcorrect;
    }

    public void setLegtcorrect(String legtcorrect) {
        this.legtcorrect = legtcorrect == null ? null : legtcorrect.trim();
    }

    public String getRightcorrect() {
        return rightcorrect;
    }

    public void setRightcorrect(String rightcorrect) {
        this.rightcorrect = rightcorrect == null ? null : rightcorrect.trim();
    }

    public String getColorblindness() {
        return colorblindness;
    }

    public void setColorblindness(String colorblindness) {
        this.colorblindness = colorblindness == null ? null : colorblindness.trim();
    }

    public String getEyedisease() {
        return eyedisease;
    }

    public void setEyedisease(String eyedisease) {
        this.eyedisease = eyedisease == null ? null : eyedisease.trim();
    }

    public String getLeftears() {
        return leftears;
    }

    public void setLeftears(String leftears) {
        this.leftears = leftears == null ? null : leftears.trim();
    }

    public String getRightears() {
        return rightears;
    }

    public void setRightears(String rightears) {
        this.rightears = rightears == null ? null : rightears.trim();
    }

    public String getEarsdisease() {
        return earsdisease;
    }

    public void setEarsdisease(String earsdisease) {
        this.earsdisease = earsdisease == null ? null : earsdisease.trim();
    }

    public String getSmell() {
        return smell;
    }

    public void setSmell(String smell) {
        this.smell = smell == null ? null : smell.trim();
    }

    public String getNosedisease() {
        return nosedisease;
    }

    public void setNosedisease(String nosedisease) {
        this.nosedisease = nosedisease == null ? null : nosedisease.trim();
    }

    public String getThroat() {
        return throat;
    }

    public void setThroat(String throat) {
        this.throat = throat == null ? null : throat.trim();
    }

    public String getStutter() {
        return stutter;
    }

    public void setStutter(String stutter) {
        this.stutter = stutter == null ? null : stutter.trim();
    }

    public String getDry() {
        return dry;
    }

    public void setDry(String dry) {
        this.dry = dry == null ? null : dry.trim();
    }

    public String getHypodontia() {
        return hypodontia;
    }

    public void setHypodontia(String hypodontia) {
        this.hypodontia = hypodontia == null ? null : hypodontia.trim();
    }

    public String getCaries() {
        return caries;
    }

    public void setCaries(String caries) {
        this.caries = caries == null ? null : caries.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
    }

    public String getHelthtype() {
        return helthtype;
    }

    public void setHelthtype(String helthtype) {
        this.helthtype = helthtype == null ? null : helthtype.trim();
    }

	@Override
	public String toString() {
		return "Face [id=" + id + ", userid=" + userid + ", lefteye=" + lefteye + ", righteye=" + righteye
				+ ", legtcorrect=" + legtcorrect + ", rightcorrect=" + rightcorrect + ", colorblindness="
				+ colorblindness + ", eyedisease=" + eyedisease + ", leftears=" + leftears + ", rightears=" + rightears
				+ ", earsdisease=" + earsdisease + ", smell=" + smell + ", nosedisease=" + nosedisease + ", throat="
				+ throat + ", stutter=" + stutter + ", dry=" + dry + ", hypodontia=" + hypodontia + ", caries=" + caries
				+ ", other=" + other + ", helthtype=" + helthtype + ", user=" + user + "]";
	}
    
}