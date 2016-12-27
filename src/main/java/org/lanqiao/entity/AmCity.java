package org.lanqiao.entity;

/**
 * 
 * @ClassName AmCity
 * @Description TODO 城市实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午2:49:28
 * @version 1.0.0
 */
public class AmCity {
    
    private String id;
    private String code;
    private String name;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "AmCity [id=" + id + ", code=" + code + ", name=" + name + "]";
    }
    
}
