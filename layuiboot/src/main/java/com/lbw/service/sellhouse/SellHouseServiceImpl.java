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
import java.util.*;

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
        if (user != null)
        sellHouseResource.setEid(user.getId());
        else
            sellHouseResource.setEid("2");
        //set 房源的主键ID
        sellHouseResource.setId(UUID.randomUUID().toString().replace("-",""));
        //set 发布日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            sellHouseResource.setReleaseTime(sdf.parse(sdf.format(new Date())));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int date = (int)System.currentTimeMillis() / 1000;
        //时间戳
        sellHouseResource.setRoom(date);
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
    public String queryHouse(Integer page, Integer number, HttpServletRequest request, SellHouseResource houseResource) {
        page = (page - 1) * number;
        Integer total = sellHouseMapper.queryHouseCount(houseResource);
        List<SellHouseResource> list = sellHouseMapper.queryHouse(page,number,houseResource);
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
        SellHouseResource sellHouseResource = sellHouseMapper.queryOneHouse(id);
        //查询省市县
        if (sellHouseResource.getProvince() != null && sellHouseResource.getProvince() != 0) {
            Area area1 = queryArea1(sellHouseResource.getProvince());
            sellHouseResource.setSheng(area1.getName());
        }
        if (sellHouseResource.getCity() != null && sellHouseResource.getCity() != 0) {
            Area area2 = queryArea1(sellHouseResource.getCity());
            sellHouseResource.setShi(area2.getName());
        }
        if (sellHouseResource.getCounty() != null && sellHouseResource.getCounty() != 0) {
            Area area3 = queryArea1(sellHouseResource.getCounty());
            sellHouseResource.setXian(area3.getName());
        }
        return sellHouseResource;
    }

    private Area queryArea1(Integer id){
        return sellHouseMapper.querySheng(id);
    }
    /**
     * 查询房屋类型
     * @return
     */
    @Override
    public List<HouseType> queryHouseType() {
        return sellHouseMapper.queryHouseType();
    }
    /**
     * 查询装修程度
     * @return
     */
    @Override
    public List<Decorate> queryDecorate() {
        return sellHouseMapper.queryDecorate();
    }

    @Override
    public Map<String, Object> slideshow(Integer type,String sid) {
        Map<String,Object> map = new HashMap<String,Object>();
        List<String> urls = sellHouseMapper.slideshow(type,sid);
        map.put("list",urls);
        map.put("count",urls.size());
        return map;
    }

    @Override
    public Map<String,Object> slideshowCount(String houseId) {
        Map<String,Object> map = new HashMap<String,Object>();
        Integer oneTypeCount = sellHouseMapper.queryOneTypeCount(houseId);
        Integer twoTypeCount = sellHouseMapper.queryTwoTypeCount(houseId);
        Integer threeTypeCount = sellHouseMapper.queryThreeTypeCount(houseId);
        List<String> urls = sellHouseMapper.slideshow(1,houseId);
        map.put("one",oneTypeCount);
        map.put("two",twoTypeCount);
        map.put("three",threeTypeCount);
        map.put("list",urls);
        return map;
    }

}
