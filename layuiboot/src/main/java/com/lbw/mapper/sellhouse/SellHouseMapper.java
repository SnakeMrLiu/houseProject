package com.lbw.mapper.sellhouse;

import com.lbw.pojo.sellhouse.Area;
import com.lbw.pojo.sellhouse.Community;
import com.lbw.pojo.sellhouse.SellHousePic;
import com.lbw.pojo.sellhouse.SellHouseResource;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
@Mapper
public interface SellHouseMapper {
    @Insert("INSERT INTO t_sell_house_resource(id,eid,title,price,room,hall,toilet,area,community,province,city,county,buildingTime,roomType,roomDirection,floor,decorate,unitPrice,monthlyPayments,sellingPoint,ownerMentality,communityComplete,serviceIntroduce,releaseTime,roomNum) VALUES(#{id},#{eid},#{title},#{price},#{room},#{hall},#{toilet},#{area},#{community}, #{province},#{city},#{county},#{buildingTime},#{roomType},#{roomDirection},#{floor},#{decorate}, #{unitPrice},#{monthlyPayments},#{sellingPoint},#{ownerMentality},#{communityComplete},#{serviceIntroduce},#{releaseTime},#{roomNum})")
    void addHouseInfo(SellHouseResource sellHouseResource);

    @Select("SELECT id,NAME FROM t_community")
    List<Community> queryCommunity();

    @Select("SELECT * FROM t_area WHERE pid = #{pid}")
    List<Area> queryArea(Integer pid);

    @Select("SELECT tshr.id,tshr.eid,tshr.title,tshr.price,tshr.room,tshr.hall,te.name ename,tshr.toilet,tshr.AREA,tc.name garden,tshr.province,tshr.city,tshr.county,tshr.buildingTime,tht.name houseType,tshr.roomDirection,tshr.FLOOR,td.name fitment,tshr.unitPrice,tshr.monthlyPayments,tshr.sellingPoint,tshr.ownerMentality,tshr.communityComplete,tshr.serviceIntroduce,tshr.releaseTime,tshr.roomNum \n" +
            "FROM t_sell_house_resource tshr\n" +
            "LEFT JOIN t_community tc ON tc.id=tshr.id \n" +
            "LEFT JOIN t_decorate td ON  td.id=tshr.id \n" +
            "LEFT JOIN t_emp te ON te.id=tshr.eid \n" +
            "LEFT JOIN t_house_type tht ON tht.id=tshr.id \n" +
            " limit #{page},#{number}")
    List<SellHouseResource> queryHouse(@Param(value = "page") Integer page, @Param(value = "number") Integer number);

    @Select("SELECT COUNT(1) FROM t_sell_house_resource")
    Integer queryHouseCount();

    @Delete("delete from t_sell_house_resource where id = #{id}")
    void deleteHouseOne(String id);

    @Select("SELECT tshr.id,tshr.eid,tshr.title,tshr.price,tshr.room,tshr.hall,te.name ename,tshr.toilet,tshr.AREA,tc.name garden,tshr.province,tshr.city,tshr.county,tshr.buildingTime,tht.name houseType,tshr.roomDirection,tshr.FLOOR,td.name fitment,tshr.unitPrice,tshr.monthlyPayments,tshr.sellingPoint,tshr.ownerMentality,tshr.communityComplete,tshr.serviceIntroduce,tshr.releaseTime,tshr.roomNum \n" +
            "FROM t_sell_house_resource tshr\n" +
            "LEFT JOIN t_community tc ON tc.id=tshr.id \n" +
            "LEFT JOIN t_decorate td ON  td.id=tshr.id \n" +
            "LEFT JOIN t_emp te ON te.id=tshr.eid \n" +
            "LEFT JOIN t_house_type tht ON tht.id=tshr.id \n" +
            " where tshr.id=#{id}")
    SellHouseResource queryOneHouse(String id);

    @Insert( "<script>"
            + "INSERT INTO t_sell_house_pic(id,sid,url,imgtype) VALUES"
            + "<foreach item='img' index='index' collection='list' separator=','>"
            +       "(#{img.id},#{img.sid},#{img.url},#{img.imgtype})"
            + "</foreach>"
            +"</script>")
    void addPhoto(@Param("list") List<SellHousePic> list);
}
