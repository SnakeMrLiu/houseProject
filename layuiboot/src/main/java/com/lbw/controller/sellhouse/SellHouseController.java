package com.lbw.controller.sellhouse;

import com.lbw.pojo.sellhouse.*;
import com.lbw.service.sellhouse.SellHouseService;
import com.lbw.utils.OssClienUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "sellhouse")
public class SellHouseController {
    @Autowired
    private SellHouseService sellHouseService;

    /**
     * 跳转房源列表页面
     * @return
     */
    @RequestMapping(value = "toSellHouseList")
    public String toSellHouseList(){
        return "sellhouse/sellHouseList";
    }

    /**
     * toQueryHousePage
     * 跳转到房屋详情的页面
     * @return
     */
    @RequestMapping(value = "toQueryHousePage")
    @ResponseBody
    public ModelAndView toQueryHousePage(String id){
        ModelAndView mv = new ModelAndView("sellhouse/housedetails");
        HashMap<String, Object> map = new HashMap<>();
        SellHouseResource sellHouseResource = sellHouseService.queryOneHouse(id);
        map.put("house",sellHouseResource);
        map.put("houseId",id);
        mv.addAllObjects(map);
        return mv;
    }


    @RequestMapping("toAddSellhouse")
    public String toAddSellhouse(){
        return "sellhouse/addSellhouse";
    }



    //发布日期  和房屋编号 记得在后台获取
    /**
     * 新增房源信息
     * @param sellHouseResource
     * @return
     */
    @RequestMapping(value = "addHouseInfo")
    @ResponseBody
    public Map<String,Object> addHouseInfo(SellHouseResource sellHouseResource, HttpServletRequest request){
        Map<String,Object> map = new HashMap<>();
        try {
            sellHouseService.addHouseInfo(sellHouseResource,request);
            map.put("success",true);
        }catch (Exception e){
            e.printStackTrace();
            map.put("false",true);
        }
        return map;
    }

    @RequestMapping(value = "queryCommunity")
    @ResponseBody
    public List<Community> queryCommunity(){
        return sellHouseService.queryCommunity();
    }
    /**
     * 查询地区
     * @param pid
     * @return
     */
    @RequestMapping(value = "queryArea")
    @ResponseBody
    public List<Area> queryArea(Integer pid){
        return  sellHouseService.queryArea(pid);
    }

    /**
     * 查询用户加分页
     * @return
     */
    @RequestMapping(value = "queryHouse")
    @ResponseBody
    //接收前台传来的page和number带参继续传后台查询分页
    public String queryHouse(Integer page, Integer number,HttpServletRequest request,SellHouseResource houseResource){
        return  sellHouseService.queryHouse(page,number,request,houseResource);
    }

    /**
     * 图片上传
     * @param request
     * @param file
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/headImgUpload", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> headImgUpload(HttpServletRequest request, MultipartFile file)throws Exception {
        Map<String,Object> map = new HashMap<String, Object>();
        try {
            if (file == null || file.getSize() <= 0) {
                throw new Exception("图片不能为空");
            }
            String  nameHz= file.getOriginalFilename(); //上传的文件名 + 后缀    如  asd.png
            String type = "";
            if(nameHz.contains(".png") || nameHz.contains(".jpg")){
                type="img";
            }
            if(nameHz.contains(".mp4") || nameHz.contains(".ogv")){
                type="video";
            }else {
                type="file";
            }
            OssClienUtils ossClient = new OssClienUtils();
            String keyName = ossClient.uploadImg2Oss(file,type);
            String imgUrl = ossClient.getImgUrl(keyName);
            System.out.println(imgUrl);
            map.put("success", true);
            map.put("path", imgUrl);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }

    /**
     * deleteHouseOne
     * 单个删除
     */
    @RequestMapping(value = "deleteHouseOne")
    @ResponseBody
    public void deleteHouseOne(String id){
        sellHouseService.deleteHouseOne(id);
    }
    /**
     * 查询房屋类型
     */
    @RequestMapping(value = "queryHouseType")
    @ResponseBody
    public List<HouseType>  queryHouseType(){
        List<HouseType> list = sellHouseService.queryHouseType();
        return list;
    }
    /**
     * 查询装修程度
     */
    @RequestMapping(value = "queryDecorate")
    @ResponseBody
    public List<Decorate>  queryDecorate(){
        List<Decorate> list = sellHouseService.queryDecorate();
        return list;
    }

    /**
     *  查询轮播图
     */
    @RequestMapping("slideshow")
    @ResponseBody
    public Map<String,Object> slideshow(Integer type,String sid){
        Map<String,Object> map =  sellHouseService.slideshow(type,sid);
        return map;
    }

    @RequestMapping(value = "slideshowCount")
    @ResponseBody
    public Map<String,Object> slideshowCount(String houseId){
        return sellHouseService.slideshowCount(houseId);
    }



}
