package com.lbw.service.sellhouse;

import com.lbw.pojo.sellhouse.Area;
import com.lbw.pojo.sellhouse.Community;
import com.lbw.pojo.sellhouse.SellHouseResource;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface SellHouseService {

    void addHouseInfo(SellHouseResource sellHouseResource, HttpServletRequest request);

    List<Community> queryCommunity();

    List<Area> queryArea(Integer pid);

    String queryHouse(Integer page, Integer number, HttpServletRequest request);

    void deleteHouseOne(String id);

    SellHouseResource queryOneHouse(String id);

}
