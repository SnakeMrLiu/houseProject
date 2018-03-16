package com.lbw.pojo.sellhouse;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

//卖房房源
public class SellHouseResource {
  private String id;//主键id
  private String eid;//员工表_主键id
  private String title;//标题
  private long price;//售价
  private long room;//室
  private long hall;//厅
  private long toilet;//卫
  private double area;//面积

  private String community;//所属小区
  private long province;//所在位置省
  private long city;//所在位置市
  private long county;//所在位置县
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date buildingTime;//建造年代
  private String roomType;//房屋类型
  private String roomDirection;//房屋方向
  private String floor;//所在楼层
  private String decorate;//装修程度
  private double unitPrice;//参考单价
  private double monthlyPayments;//参考月供
  private String sellingPoint;//核心卖点
  private String ownerMentality;//业主心态
  private String communityComplete;//小区配套
  private String serviceIntroduce;//服务介绍(富文本)
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date   releaseTime;//发布日期
  private String roomNum;//房屋编号
  private String ename;//员工别名
  private String imgtype;//图片
  private String url;//图片地址
  private String garden;//小区别名
  private String houseType;//房屋类型
  private String fitment;//装修等级

  public String getGarden() {
    return garden;
  }

  public void setGarden(String garden) {
    this.garden = garden;
  }

  public String getHouseType() {
    return houseType;
  }

  public void setHouseType(String houseType) {
    this.houseType = houseType;
  }

  public String getFitment() {
    return fitment;
  }

  public void setFitment(String fitment) {
    this.fitment = fitment;
  }

  public String getImgtype() {
    return imgtype;
  }

  public void setImgtype(String imgtype) {
    this.imgtype = imgtype;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public String getEname() {
    return ename;
  }

  public void setEname(String ename) {
    this.ename = ename;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getEid() {
    return eid;
  }

  public void setEid(String eid) {
    this.eid = eid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public long getPrice() {
    return price;
  }

  public void setPrice(long price) {
    this.price = price;
  }

  public long getRoom() {
    return room;
  }

  public void setRoom(long room) {
    this.room = room;
  }

  public long getHall() {
    return hall;
  }

  public void setHall(long hall) {
    this.hall = hall;
  }

  public long getToilet() {
    return toilet;
  }

  public void setToilet(long toilet) {
    this.toilet = toilet;
  }

  public double getArea() {
    return area;
  }

  public void setArea(double area) {
    this.area = area;
  }

  public String getCommunity() {
    return community;
  }

  public void setCommunity(String community) {
    this.community = community;
  }

  public long getProvince() {
    return province;
  }

  public void setProvince(long province) {
    this.province = province;
  }

  public long getCity() {
    return city;
  }

  public void setCity(long city) {
    this.city = city;
  }

  public long getCounty() {
    return county;
  }

  public void setCounty(long county) {
    this.county = county;
  }

  public Date getBuildingTime() {
    return buildingTime;
  }

  public void setBuildingTime(Date buildingTime) {
    this.buildingTime = buildingTime;
  }

  public String getRoomType() {
    return roomType;
  }

  public void setRoomType(String roomType) {
    this.roomType = roomType;
  }

  public String getRoomDirection() {
    return roomDirection;
  }

  public void setRoomDirection(String roomDirection) {
    this.roomDirection = roomDirection;
  }

  public String getFloor() {
    return floor;
  }

  public void setFloor(String floor) {
    this.floor = floor;
  }

  public String getDecorate() {
    return decorate;
  }

  public void setDecorate(String decorate) {
    this.decorate = decorate;
  }

  public double getUnitPrice() {
    return unitPrice;
  }

  public void setUnitPrice(double unitPrice) {
    this.unitPrice = unitPrice;
  }

  public double getMonthlyPayments() {
    return monthlyPayments;
  }

  public void setMonthlyPayments(double monthlyPayments) {
    this.monthlyPayments = monthlyPayments;
  }

  public String getSellingPoint() {
    return sellingPoint;
  }

  public void setSellingPoint(String sellingPoint) {
    this.sellingPoint = sellingPoint;
  }

  public String getOwnerMentality() {
    return ownerMentality;
  }

  public void setOwnerMentality(String ownerMentality) {
    this.ownerMentality = ownerMentality;
  }

  public String getCommunityComplete() {
    return communityComplete;
  }

  public void setCommunityComplete(String communityComplete) {
    this.communityComplete = communityComplete;
  }

  public String getServiceIntroduce() {
    return serviceIntroduce;
  }

  public void setServiceIntroduce(String serviceIntroduce) {
    this.serviceIntroduce = serviceIntroduce;
  }

  /*public String getReleaseTime() {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    if (releaseTime == null){
      return "";
    }
    return sdf.format(releaseTime);
  }*/

  public String getReleaseTime() {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    if (releaseTime == null){
      return "";
    }
    return sdf.format(releaseTime);
  }

  public void setReleaseTime(Date releaseTime) {
    this.releaseTime = releaseTime;
  }

  public String getRoomNum() {
    return roomNum;
  }

  public void setRoomNum(String roomNum) {
    this.roomNum = roomNum;
  }
}
