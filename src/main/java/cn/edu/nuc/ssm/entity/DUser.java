package cn.edu.nuc.ssm.entity;

public class DUser {
    private String id;

    private String name;

    private String sex;

    private String age;

    private String marry;

    private String education;

    private String nativeplace;

    private String company;

    private String address;

    private String medicalhistory;

    private String roleid;

    private String pass;
    
    private DRole role;
    private Face face;
    private Medicine medicine;
    private Out out;
    private Perspective perspective;
    private Test test;

	public Face getFace() {
		return face;
	}

	public void setFace(Face face) {
		this.face = face;
	}

	public Medicine getMedicine() {
		return medicine;
	}

	public void setMedicine(Medicine medicine) {
		this.medicine = medicine;
	}

	public Out getOut() {
		return out;
	}

	public void setOut(Out out) {
		this.out = out;
	}

	public Perspective getPerspective() {
		return perspective;
	}

	public void setPerspective(Perspective perspective) {
		this.perspective = perspective;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age == null ? null : age.trim();
    }

    public String getMarry() {
        return marry;
    }

    public void setMarry(String marry) {
        this.marry = marry == null ? null : marry.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace == null ? null : nativeplace.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getMedicalhistory() {
        return medicalhistory;
    }

    public void setMedicalhistory(String medicalhistory) {
        this.medicalhistory = medicalhistory == null ? null : medicalhistory.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass == null ? null : pass.trim();
    }

	public DRole getRole() {
		return role;
	}

	public void setRole(DRole role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "DUser [id=" + id + ", name=" + name + ", sex=" + sex + ", age=" + age + ", marry=" + marry
				+ ", education=" + education + ", nativeplace=" + nativeplace + ", company=" + company + ", address="
				+ address + ", medicalhistory=" + medicalhistory + ", roleid=" + roleid + ", pass=" + pass + ", role="
				+ role + ", face=" + face + ", medicine=" + medicine + ", out=" + out + ", perspective=" + perspective
				+ ", test=" + test + "]";
	}

}