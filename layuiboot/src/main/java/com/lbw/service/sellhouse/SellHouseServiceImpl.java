package com.lbw.service.sellhouse;

import com.alibaba.fastjson.JSONObject;
import com.lbw.mapper.sellhouse.SellHouseMapper;
import com.lbw.pojo.sellhouse.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class SellHouseServiceImpl implements  SellHouseService {
    @Autowired
    private SellHouseMapper sellHouseMapper;

    @Override
    public void addHouseInfo(SellHouseResource sellHouseResource, HttpServletRequest request) {

        //获取登录员工信息
        HttpSession session = request.getSession();
        Emp user = (Emp)session.getAttribute(session.getId());
        //set  员工Id
        sellHouseResource.setEid(user.getId());
        //set 房源的主键ID
        sellHouseResource.setId(UUID.randomUUID().toString().replace("-",""));
        //set 发布日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            sellHouseResource.setReleaseTime(sdf.parse(sdf.format(new Date())));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //时间戳
        sellHouseResource.setRoom(System.currentTimeMillis());
        //批量上传图片
        String[] url = sellHouseResource.getUrl().split(",");
        String[] imgType = sellHouseResource.getImgtype().split(",");
        List<SellHousePic> list = new ArrayList<SellHousePic>();
        for (int i = 0;i<url.length;i++) {
            SellHousePic sellHousePic = new SellHousePic();
            sellHousePic.setId(UUID.randomUUID().toString().replace("-",""));
            sellHousePic.setSid(sellHouseResource.getId());
            sellHousePic.setUrl(url[i]);
            sellHousePic.setImgtype(Integer.parseInt(imgType[i]));
            list.add(sellHousePic);
        }
        sellHouseMapper.addPhoto(list);
        //新增房源
        sellHouseMapper.addHouseInfo(sellHouseResource);
        //set员工关联ID
        //sellHouseResource.setEid();
        //sellHouseMapper.addHouseInfo(sellHouseResource);
        //新增房屋图片表t_sell_house_pic
    }

    @Override
    public List<Community> queryCommunity() {
        return sellHouseMapper.queryCommunity();
    }

    @Override
    public List<Area> queryArea(Integer pid) {
        return sellHouseMapper.queryArea(pid);
    }
    @Override
    public String queryHouse(Integer page, Integer number, HttpServletRequest request) {
        page = (page - 1) * number;
        Integer total = sellHouseMapper.queryHouseCount();
        List<SellHouseResource> list = sellHouseMapper.queryHouse(page,number);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code", 0);
        jsonObject.put("msg", "");
        jsonObject.put("count", total);
        jsonObject.put("data", list);
        return jsonObject.toString();
    }

    @Override
    public void deleteHouseOne(String id) {
        sellHouseMapper.deleteHouseOne(id);
    }

    @Override
    public SellHouseResource queryOneHouse(String id) {
        return sellHouseMapper.queryOneHouse(id);
    }

}
