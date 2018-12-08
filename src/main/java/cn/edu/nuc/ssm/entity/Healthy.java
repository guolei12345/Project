package cn.edu.nuc.ssm.entity;

public class Healthy {
    private String id;

    private String demp;

    private String type;

    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDemp() {
        return demp;
    }

    public void setDemp(String demp) {
        this.demp = demp == null ? null : demp.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}