package com.lbw.service.sellhouse;

import com.lbw.pojo.sellhouse.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface SellHouseService {

    void addHouseInfo(SellHouseResource sellHouseResource, HttpServletRequest request);

    List<Community> queryCommunity();

    List<Area> queryArea(Integer pid);

    String queryHouse(Integer page, Integer number, HttpServletRequest request, SellHouseResource houseResource);

    void deleteHouseOne(String id);

    SellHouseResource queryOneHouse(String id);
    /**
     * 查询房屋类型
     * @return
     */
    List<HouseType> queryHouseType();

    /**
     * 查询装修程度
     * @return
     */
    List<Decorate> queryDecorate();

    Map<String,Object> slideshow(Integer type, String sid);

    Map<String,Object> slideshowCount(String houseId);
}
