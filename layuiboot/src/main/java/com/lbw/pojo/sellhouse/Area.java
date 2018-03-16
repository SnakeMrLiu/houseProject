package com.lbw.pojo.sellhouse;

//省市县
public class Area {

  private long id;//主键id
  private String createDate;//省
  private String modifyDate;//市
  private String orders;//县
  private String fullName;//县
  private String name;//县
  private String treePath;//县
  private String parent;//县

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getCreateDate() {
    return createDate;
  }

  public void setCreateDate(String createDate) {
    this.createDate = createDate;
  }

  public String getModifyDate() {
    return modifyDate;
  }

  public void setModifyDate(String modifyDate) {
    this.modifyDate = modifyDate;
  }

  public String getOrders() {
    return orders;
  }

  public void setOrders(String orders) {
    this.orders = orders;
  }

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getTreePath() {
    return treePath;
  }

  public void setTreePath(String treePath) {
    this.treePath = treePath;
  }

  public String getParent() {
    return parent;
  }

  public void setParent(String parent) {
    this.parent = parent;
  }
}
