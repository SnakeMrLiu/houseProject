<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/3/15
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>房源列表</title>
    <link rel="stylesheet" href="../js/layui/css/layui.css"/>
    <script src="../js/layui/layui.js"></script>
    <%--<script src="../js/layui/layui.all.js"></script>--%>
    <script src="../js/jquery-1.8.0.js"></script>
</head>
<body>
    <table class="layui-table" id="LAY_table_house" lay-filter="test"></table>
    <div id="laypage"></div>
</body>
<script>
  var limitcount = 10;
  var curnum = 1;
  var table;
    //列表查询方法
    function productsearch(start,limitsize) {
        layui.use(['table', 'laypage', 'laydate'], function () {
            table = layui.table;
            laydate = layui.laydate,
            laypage = layui.laypage;
            table.render({
                elem: '#LAY_table_house'
                , url: '../sellhouse/queryHouse.do?page=' + start + '&number=' + limitsize
                , cols: [[
                    {checkbox: true}
                    , {field: 'title', title: '标题', width: 200}
                    , {field: 'price', title: '售价', width: 80}
                    , {field: 'room', title: '室', width: 50}
                    , {field: 'hall', title: '厅', width: 50}
                    , {field: 'area', title: '面积', width: 50}
                    , {field: 'community', title: '所属小区', width: 130}
                    , {field: 'roomTppe', title: '房屋类型', width: 50}
                    , {field: 'floor', title: '所在楼层', width: 50}
                    , {field: 'decorate', title: '装修程度', width: 60}
                    , {field: 'releaseTime', title: '发布日期', width: 130}
                    , {field: '', title: '操作', toolbar: '#barDemo'}
                ]]
                , page: false
                , height: 410
                , done: function (res, curr, count) {
                    //如果是异步请求数据方式，res即为你接口返回的信息。
                    //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                    laypage.render({
                        elem: 'laypage'
                        , count: count
                        , curr: curnum
                        , limit: limitcount
                        , layout: ['prev', 'page', 'next', 'skip', 'count', 'limit']
                        , jump: function (obj, first) {
                            if (!first) {
                                curnum = obj.curr;
                                limitcount = obj.limit;
                                productsearch(curnum, limitcount);
                            }
                        }
                    })
                }
            })
            table.on('tool(test)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
                $ = layui.jquery
                var data = obj.data //获得当前行数据
                    , layEvent = obj.event; //获得 lay-event 对应的值
                if (layEvent === 'detail') {
                    viewLableInfo(data.attrId);
                    layer.msg(data.attrId);
                } else if (layEvent === 'del') {
                    layer.confirm("确认要删除吗，删除后不能恢复", {title: "删除确认"}, function (index) {
                        layer.close(index);
                        $.post("../sellhouse/deleteHouseOne.do?id=" + data.id, function (data) {
                            layer.msg("删除成功!");
                            location.reload();
                        });
                    });
                    /* window.location.href="../book/deleteBook.do?id="+data.id;*/
                } else if(layEvent == 'query'){
                    location.href="../sellhouse/toQueryHousePage.do?id="+data.id;
                }
            });
        })
    }
  productsearch( curnum, limitcount);
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-xs" lay-event="query">查看</a>
</script>
</html>
