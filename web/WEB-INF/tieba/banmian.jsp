<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Evernote Export</title>
    <basefont face="微软雅黑" size="2"/>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="exporter-version"
          content="Evernote Windows/305825 (zh-CN, DDL); Windows/6.1.7601 Service Pack 1 (Win64);"/>
    <style>
        body, td {
            font-family: 微软雅黑;
            font-size: 10pt;
        }
    </style>
</head>
<body>
<a name="3620"/>

<!-- 显示整体布局 -->
<div><span><div style="-evernote-webclip:true"><br/><div style="font-size: 16px; display: block;margin: 0 auto;"><div
        style="box-sizing:content-box;text-size-adjust:100%;font-size:10px;-webkit-tap-highlight-color:rgba(0, 0, 0, 0);">
    <div
            style="box-sizing:content-box;font-size:12px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;color:rgb(51, 51, 51);line-height:22px;margin: 0 auto;"><div
            style="box-sizing:content-box;margin:0px;padding:0px;position:absolute;top:2px;right:10px;z-index:10005;"><ul
            style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;"><li
            style="box-sizing:content-box;padding:0px;list-style:none;margin:8px 13px 0px;background:rgb(235, 235, 235);width:1px;height:13px;float:left;font-size:13px;"></li><li
            style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;float:left;font-size:13px;"><div
            style="box-sizing:content-box;margin:0px;padding:4px 11px 7px;"><a
            href="/"
            style="box-sizing:content-box;background-color:transparent;color:rgb(51, 51, 51);text-decoration:underline;font-family:Arial;"
            target="_blank">首页</a></div></li>

        <c:if test="${null!=sessionScope['userinfo']}">
                <li
                    style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;float:left;font-size:13px;"><div
                    style="box-sizing:content-box;margin:0px;padding:4px 11px 7px;"><a
                    href="/userinfo"
                    style="box-sizing:content-box;background-color:transparent;color:rgb(51, 51, 51);text-decoration:underline;font-family:Arial;"
                    title="点击到个人中心"><span style="box-sizing:content-box;">${userinfo.username}</span><i
                    style="box-sizing:content-box;display:inline-block;width:7px;height:16px;vertical-align:bottom;margin-left:3px;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/i-arrow-down_2c2c491.png&quot;) 0px 2px no-repeat;"></i></a></div></li>

            <li
                    style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;float:left;font-size:13px;">
                <div
                        style="box-sizing:content-box;margin:0px;padding:4px 11px 7px;">
                                  <a href="/logout">注销</a>
                </div>
            </li>
        </c:if>

                  <c:if test="${null==sessionScope['userinfo']}">
                      <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;float:left;font-size:13px;">
                          <div
                                  style="box-sizing:content-box;margin:0px;padding:4px 11px 7px;">
                              <a href="/register">注册</a></div>
                      </li>
                      <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;float:left;font-size:13px;">
                          <div style="box-sizing:content-box;margin:0px;padding:4px 11px 7px;">
                      <a href="/login">登录</a>
                          </div>
                      </li>
                  </c:if>


    </ul></div>
<div style="box-sizing:content-box;margin:0 auto;padding:0px;background-color:rgb(220, 239, 254);">
    <div style="box-sizing:content-box;margin:0px;padding:0px;padding-bottom:50px;">

<div style="box-sizing:content-box;margin:0px;padding:0px;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;"><div
            style="box-sizing:content-box;margin:0px;padding:0px;">

<div style="box-sizing:content-box;margin:0px;padding:0px;height:1px;width:1px;line-height:1px;margin-top:-1px;font-size:0px;"></div>

</div>
</div>

<div style="clear:both"></div>
    <div>


<!-- 显示进入贴吧按钮-->
<div style="margin: 0 auto;max-width: 600px;">
<form action="/tieba" method="get">
    <input type="text" style="float:left;width: 392px;height:30px;" name="tiebaname" value="${tieba.tiebaname}">
                        <span style="box-sizing:content-box;text-decoration:none;float:left;width:104px;height:40px;display:block;margin:0 auto;">
                            <input type="submit" value="进入贴吧"
                                    style="float:left;box-sizing:content-box;display:inline;text-decoration:none;height:39px;line-height:39px;overflow:hidden;padding:0px;border:1px solid rgb(51, 136, 255);font-size:16px;color:rgb(255, 255, 255);background:rgb(51, 136, 255);width:104px;text-align:center;margin-left:0px;cursor:pointer;font-family:Arial;border-top:0px;border-right:0px;border-left:0px;">

                            </input>
                    </span>
                    <span style="box-sizing:content-box;text-decoration:none;float:left;width:104px;height:40px;display:block;margin:0 auto;">
                        <a href="/search"
                           style="border:1px solid rgb(51, 136, 255);background-color:transparent;box-sizing:content-box;float:left;font-family:Arial;line-height:38px;overflow:hidden;padding:0px;color:rgb(51, 136, 255);font-size:16px;height:38px;display:inline;width:102px;text-align:center;margin-left:0px;cursor:pointer;text-decoration:none;">
                            全吧搜索
                        </a>
                    </span>
</form>
</div>
    </div>
<div style="clear:both"></div>

<div style="box-sizing:content-box;margin:0px;padding:0px;"></div><div
        style="box-sizing:content-box;margin:0px;padding:0px;">
<div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;">
        <div style="box-sizing:content-box;margin:0px;padding:0px;">


<div style="box-sizing:content-box;margin:0px;padding:0px;"><div
        style="box-sizing:content-box;padding:0px;margin:0px auto;width:980px;position:relative;z-index:9999;">
    </div>


</div>    </div>
    <div style="box-sizing:content-box;padding:0px;margin:0px auto;width:982px;">



    </div>
    <div style="box-sizing:content-box;padding:0px;margin:0px auto;width:982px;">




<div style="box-sizing:content-box;margin:0px;padding:0px;display:block;position:relative;overflow:hidden;">
      <img src="/images/tieba/default_head20141014.jpg"
           type="/images/tieba/jpeg" data-filename="default_head20141014.jpg" height="181"
           style="box-sizing:content-box;border:0px;width:100%;vertical-align:top;" width="982"/>




</div>

<div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;background-color:rgb(242, 244, 247);background-image:-webkit-linear-gradient(top, rgb(245, 247, 250), rgb(242, 244, 247));border-top:1px solid rgb(233, 235, 240);">
   <div style="box-sizing:content-box;padding:0px;margin:15px 20px 0px 0px;float:right;">
       <div style="box-sizing:content-box;margin:0px;padding:0px;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;font-family:&quot;Microsoft YaHei&quot;, SimHei;">

<div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;z-index:9999;">

</div>



            </div>
</div>   </div>
   <div style="box-sizing:content-box;margin:0px;padding:15px 0px 0px 100px;zoom:1;height:74px;line-height:normal;position:relative;font-family:STHeiti, &quot;Microsoft Yahei&quot;, Arial, SimSun;float:left;padding-left:200px;">
              <div style="border:1px solid rgba(0, 0, 0, 0.1);margin:20px;box-sizing:content-box;width:150px;height:150px;display:block;overflow:hidden;padding:4px;background:rgb(255, 255, 255);position:absolute;left:0px;top:auto;z-index:9;bottom:-5px;border-color:rgb(218, 220, 223);">
           <a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8"
              style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;">
               <img src="/images/tieba/timg.jpg"
                    type="/images/tieba/jpeg" data-filename="timg.jpg" height="150"
                    style="box-sizing:content-box;border:0px;display:block;overflow:hidden;width:150px;height:150px;"
                    width="150"/>
           </a>
       </div>

       <div style="box-sizing:content-box;padding:0px;height:40px;position:relative;margin:0px;">
           <a href=""
              style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(51, 51, 51);font-size:22px;margin-right:0px;float:left;margin-top:3px;"
              title="">
               ${tieba.tiebaname}吧
           </a>
                                 <div style="box-sizing:content-box;margin:0px;padding:0px;display:inline-block;float:left;">
               <div style="box-sizing:content-box;margin:0px;padding:0px;">
<a href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
   style="box-sizing:content-box;color:rgb(45, 100, 179);text-decoration:none;height:28px;float:left;margin-left:20px;width:72px;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/frs_islike_a450e55.png&quot;) left top no-repeat;margin-top:2px;"></a>
</div>           </div>
           <div style="box-sizing:content-box;margin:0px;padding:0px;float:left;margin-top:13px;margin-left:10px;">
               <div style="box-sizing:content-box;margin:0px;padding:0px;"><span style="box-sizing:content-box;">
  <span style="box-sizing:content-box;color:rgb(170, 170, 170);">贴子：</span>
  <span style="box-sizing:content-box;color:rgb(255, 127, 62);font-family:Arial;margin-right:5px;">7,541,400</span>
</span>
</div>           </div>
       </div>

       <p style="padding-right:30px;margin:0px;box-sizing:content-box;padding:0px;font-size:14px;float:left;color:rgb(76, 76, 76);position:relative;max-width:280px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;margin-top:0px;"></p>

       <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;float:left;font-size:14px;height:20px;">
           <ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;zoom:1;">
                                  <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;display:inline;">
                                          </li>


                          <span style="list-style:none;display:table;clear:both;"> </span></ul>
       </div>
   <span style="line-height:normal;font-family:STHeiti, &quot;Microsoft Yahei&quot;, Arial, SimSun;display:table;clear:both;"> </span></div>
<span style="display:table;clear:both;"> </span></div>
<div style="box-sizing:content-box;margin:0px;padding:0px;">


<div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;zoom:1;z-index:1001;">
    </div>
<div style="box-sizing:content-box;margin:0px;padding:0px;">
</div><div style="box-sizing:content-box;margin:0px;padding:0px;"></div><div
        style="box-sizing:content-box;margin:0px;padding:0px;"></div></div><div
            style="box-sizing:content-box;margin:0px;padding:0px;"><div
            style="box-sizing:content-box;margin:0px;padding:0px;width:100%;height:46px;position:relative;background-image:linear-gradient(rgb(238, 239, 243) 0px, rgb(234, 238, 241) 100%);background-repeat:repeat-x;border-top:1px solid rgb(219, 220, 224);border-bottom:1px solid rgb(219, 220, 224);">
        <ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;float:left;width:750px;height:46px;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;font-size:16px;overflow:visible;">
                                <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;float:left;line-height:46px;background-image:linear-gradient(rgb(224, 225, 229) 0px, rgb(219, 223, 226) 100%);background-repeat:repeat-x;">
    <a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8"
       style="box-sizing:content-box;background-color:transparent;color:rgb(51, 51, 51);text-decoration:none;position:relative;display:block;padding:0px 22px;">看贴</a>
</li>                                                                <li
                style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;float:left;line-height:46px;">
    <a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;tab=good"
       style="box-sizing:content-box;background-color:transparent;color:rgb(51, 51, 51);text-decoration:none;position:relative;display:block;padding:0px 22px;">精品</a>
</li>                                                                            </ul>
                            <div style="box-sizing:content-box;padding:0px;margin:10px 8px 0px 0px;height:25px;display:inline;position:relative;float:right;">


            </div>
            </div>

</div><div style="box-sizing:content-box;margin:0px;padding:0px;"></div>    </div>
</div>
</div></div>
<div style="box-sizing:content-box;padding:0px;margin:0px auto;width:980px;min-height:800px;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;">    <div
            style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/forum_content_bg_7d89132.png&quot;) center 0px repeat-y rgb(255, 255, 255);border-right:1px solid rgb(228, 230, 235);border-left:1px solid rgb(228, 230, 235);border-bottom:1px solid rgb(228, 230, 235);">
        <div style="box-sizing:content-box;margin:0px;padding:0px;float:left;width:739px;">
            <div style="box-sizing:content-box;margin:0px;padding:0px;"><div
                    style="box-sizing:content-box;margin:0px;padding:0px;"><div
                    style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;">



</div><div style="box-sizing:content-box;margin:0px;padding:0px;">
</div><div style="box-sizing:content-box;margin:0px;padding:0px;"><div
                    style="box-sizing:content-box;margin:0px;padding:0px;">
</div></div><div style="box-sizing:content-box;margin:0px;padding:0px;">
<c:forEach items="${alltiezi}" var="i">
    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;zoom:1;position:relative;border-bottom:1px dotted rgb(228, 230, 235);">
            <div style="box-sizing:content-box;margin:0px 20px;padding:10px 0px;">

                    <div style="box-sizing:content-box;margin:0px;padding:0px;float:left;min-height:1px;width:70px;">

                        <%-- 显示回复数目--%>
                <span style="box-sizing:content-box;display:inline-block;text-align:center;width:50px;height:30px;line-height:26px;margin-right:20px;vertical-align:middle;"
                      title="回复"></span>
            </div>
                <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;min-height:1px;margin-left:70px;">
            <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;">
                <div style="box-sizing:content-box;margin:0px;padding:0px;width:460px;font-size:14px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;float:left;">


    <a href="/selecttiezi?tieziid=${i.id}"
       style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;vertical-align:middle;"
       target="_blank" >
        ${i.title}
    </a>
</div><div style="box-sizing:content-box;margin:0px;padding:0px;width:165px;color:rgb(153, 153, 153);float:right;">
    <span style="box-sizing:content-box;vertical-align:middle;width:135px;"><i
            style="box-sizing:content-box;background-repeat:no-repeat;display:inline-block;width:20px;height:20px;background-position:-30px -60px;vertical-align:middle;"></i><span
            style="box-sizing:content-box;display:inline-block;width:87px;vertical-align:middle;">

        <a
            href="/"
            style="box-sizing:content-box;background-color:transparent;display:inline-block;max-width:67px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;color:rgb(153, 153, 153);text-decoration:none;vertical-align:middle;"
            target="_blank">${i.user.username}
        </a>

    </span><span
            style="box-sizing:content-box;float:none;margin:0px 0px 0px 2px;display:inline-block;zoom:1;vertical-align:middle;"><a
            href="http://tieba.baidu.com/f?kw=%E7%8E%A9%E5%AE%B6%E8%AE%A4%E8%AF%81&amp;ie=utf-8"
            style="width:14px;background-color:transparent;top:0px;box-sizing:content-box;float:left;height:14px;margin-right:2px;vertical-align:middle;text-decoration:none;color:rgb(153, 153, 153);left:0px;"
            target="_blank">  <div
            style="box-sizing:content-box;margin:0px;padding:0px;"></div></a></span>    </span>

</div>
            <span style="display:table;clear:both;"> </span></div>
                            <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;padding-top:3px;position:relative;">
                    <div style="box-sizing:content-box;margin:0px;padding:0px;width:460px;float:left;">
                                <div style="box-sizing:content-box;margin:0px;padding:0px;width:460px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;color:rgb(102, 102, 102);">
            ${i.floors[0].content}
        </div>

                    </div>


<div style="box-sizing:content-box;margin:0px;padding:0px;width:165px;color:rgb(153, 153, 153);float:right;">
        <span style="box-sizing:content-box;vertical-align:middle;">
            <i style="box-sizing:content-box;background-repeat:no-repeat;display:inline-block;width:20px;height:20px;background-position:0px -60px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/thread_list_z_eca48fe.png&quot;);vertical-align:middle;"></i>
                    </span>

</div>
                <span style="display:table;clear:both;"> </span></div>
                    </div>
    </div>
<span style="list-style:none;display:table;clear:both;"> </span></li>
</c:forEach>
<ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;">


    <!--这里显示版面 -->



</ul>

<div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;">
    <!--这里加入页码显示-->
    <!--<div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;margin-left:20px;margin-top:15px;margin-bottom:15px;"><span-->
    <!--style="box-sizing:content-box;display:inline-block;cursor:pointer;line-height:normal;text-decoration:none;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);color:rgb(62, 137, 250);border:1px solid transparent;">1</span>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=50"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">2</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=100"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">3</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=150"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">4</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=200"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">5</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=250"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">6</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=300"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">7</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=350"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">8</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=400"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">9</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=450"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">10</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=50"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">下一页&gt;</a>-->
    <!--<a href="http://tieba.baidu.com/f?kw=java&amp;ie=utf-8&amp;pn=384150"-->
    <!--style="box-sizing:content-box;color:rgb(102, 102, 102);text-decoration:none;display:inline-block;cursor:pointer;line-height:normal;padding:5px 9px;font-size:12px;background:rgb(255, 255, 255);border:1px solid rgb(230, 230, 230);">尾页</a>-->
    <!--<span style="display:table;clear:both;"> </span></div>    -->

    <!-- 显示帖子数目 -->
    <%--<div--%>
            <%--style="box-sizing:content-box;margin:0px;padding:0px;color:rgb(153, 153, 153);">--%>
        <%--<div style="box-sizing:content-box;margin:0px;padding:0px;width:650px;float:left;margin-top:7px;margin-left:18px;">--%>
                            <%--共有主题数<span style="box-sizing:content-box;color:rgb(247, 77, 74);">384151</span>个，贴子数--%>
                <%--<span style="box-sizing:content-box;color:rgb(247, 77, 74);">7541400</span>篇--%>
                <%--<a href="http://tieba.baidu.com/bawu2/platform/listMemberInfo?word=java&amp;ie=utf-8"--%>
                   <%--style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"--%>
                   <%--target="_blank">爪哇猿</a>数<span style="box-sizing:content-box;color:rgb(247, 77, 74);">651398</span>--%>
                    <%--</div>--%>
    <%--</div>--%>
<span style="display:table;clear:both;"> </span></div>
</div>

                <span style="display:table;clear:both;"> </span></div>
</div></div>        </div>
        <div style="box-sizing:content-box;margin:0px;padding:0px;float:right;width:238px;display:inline;">
            <div style="box-sizing:content-box;margin:0px;padding:0px;"><div
                    style="box-sizing:content-box;margin:0px;padding:0px;"><div
                    style="box-sizing:content-box;margin:0px;padding:0px;"></div><div
                    style="box-sizing:content-box;margin:0px;padding:0px;">
<div style="box-sizing:content-box;margin:0px;padding:16px;position:relative;overflow:hidden;border-bottom:1px solid rgb(228, 230, 235);">
    <h4 style="box-sizing:content-box;margin:0px;padding:0px;font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;zoom:1;color:rgb(51, 51, 51);">
        我在贴吧        <span style="box-sizing:content-box;font-size:12px;font-weight:400;float:right;"> </span>
    <span style="font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;color:rgb(51, 51, 51);display:table;clear:both;"> </span></h4>
    <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;margin-top:10px;">
        <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;zoom:1;">
    <a href="/userinfo"
       style="position:relative;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;box-sizing:content-box;vertical-align:top;float:left;width:80px;height:80px;padding:2px;border:1px solid rgb(204, 204, 204);"
       target="_blank">
        <%--<c:out value="/images/avatars/${userinfo.avatar.savename}" default="/images/avatars/defaultavatar.jpg" ></c:out>--%>
                <img src="images/avatars/${userinfo.avatar.savename==null?"defaultavatar.jpg":userinfo.avatar.savename}"
                     type="/images/tieba/jpeg" data-filename="5de877616e6b61697373b203.jpg" height="80"
                     style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="80"/>
    </a>
    <div style="box-sizing:content-box;margin:0px;padding:0px;vertical-align:top;position:relative;margin-left:96px;">
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">

<span style="box-sizing:content-box;float:left;margin:3px 0px 0px;margin-top:4px;vertical-align:middle;"><a
        href="http://tieba.baidu.com/tbmall/tshow"
        style="height:16px;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;box-sizing:content-box;display:inline-block;background-repeat:no-repeat;background-position:-100px -52px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/all_z_01f0eaf.png&quot;);width:16px;vertical-align:middle;float:left;margin-right:5px;"
        target="_blank" title="贴吧超级会员"></a></span>            <a
                        href="/userinfo"
                        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;vertical-align:middle;"
                        target="_blank" title="">
                    ${userinfo.username}
                </a>
        </div>
                <div style="box-sizing:content-box;margin:0px;padding:0px;">
            <i style="box-sizing:content-box;display:inline-block;width:16px;height:16px;background-repeat:no-repeat;background-position:-52px -142px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/all_z_01f0eaf.png&quot;);vertical-align:middle;"></i>
            <a href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
               style="box-sizing:content-box;background-color:transparent;text-decoration:none;vertical-align:middle;margin-right:2px;color:rgb(248, 152, 74);">0</a>
            <a href="#"
               style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;vertical-align:middle;">[获取]</a>
        </div>
                <div style="box-sizing:content-box;margin:0px;padding:0px;">
            <span style="box-sizing:content-box;margin-left:2px;float:left;vertical-align:middle;"></span>        </div>
    </div>
<span style="display:table;clear:both;"> </span></div>

<div style="box-sizing:content-box;margin:0px;padding:0px;">
        <a href="http://tieba.baidu.com/tbmall/propslist?category=112&amp;ps=24"
           style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"
           target="_blank"></a>    <div style="box-sizing:content-box;margin:0px;padding:0px;"></div>
</div>
    <span style="display:table;clear:both;"> </span></div>
    <div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:0px;"></div>
</div>
</div><div style="box-sizing:content-box;margin:0px;padding:16px;position:relative;overflow:hidden;border-bottom:1px solid rgb(228, 230, 235);">
    <h4 style="box-sizing:content-box;margin:0px;padding:0px;font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;zoom:1;color:rgb(51, 51, 51);">
        扫二维码下载贴吧客户端        <span style="box-sizing:content-box;font-size:12px;font-weight:400;float:right;"> </span>
    <span style="font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;color:rgb(51, 51, 51);display:table;clear:both;"> </span></h4>
    <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;margin-top:10px;">

<div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;">
	<div style="box-sizing:content-box;margin:0px;padding:0px;width:75px;height:75px;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/frs-aside/icon_82b7872.png&quot;);float:right;">

	</div>
	<div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;line-height:24px;padding-top:12px;color:rgb(102, 102, 102);">
		下载贴吧APP<br style="box-sizing:content-box;"/>看高清直播、视频！
	</div>
<span style="display:table;clear:both;"> </span></div>
    <span style="display:table;clear:both;"> </span></div>
    <div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:0px;"></div>
</div>
<div style="box-sizing:content-box;margin:0px;padding:0px;">
</div><div style="box-sizing:content-box;margin:0px;padding:0px;">

</div><div style="box-sizing:content-box;margin:0px;padding:0px;"></div><div
                        style="box-sizing:content-box;margin:0px;padding:0px;"><div
                        style="box-sizing:content-box;margin:0px;padding:16px;position:relative;overflow:hidden;border-bottom:1px solid rgb(228, 230, 235);">
    <h4 style="box-sizing:content-box;margin:0px;padding:0px;font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;zoom:1;color:rgb(51, 51, 51);cursor:pointer;">
        本吧信息        <span style="box-sizing:content-box;font-size:12px;font-weight:400;float:right;"><a
            href="http://tieba.baidu.com/bawu2/platform/detailsInfo?word=java&amp;ie=utf-8"
            style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"
            target="_blank">查看详情&gt;&gt;</a>
 </span>
    <span style="font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;color:rgb(51, 51, 51);cursor:pointer;display:table;clear:both;"> </span></h4>
    <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;margin-top:10px;">



    <ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;zoom:1;">
                                <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                                <a href="http://tieba.baidu.com/home/main/?un=SYQSYQQQ&amp;ie=utf-8&amp;fr=frs"
                                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                                   target="_blank" title="SYQSYQQQ">
                    <img src="/images/tieba/51f853595153595151518401.jpg"
                         type="/images/tieba/jpeg" data-filename="51f853595153595151518401.jpg" alt="" height="60"
                         style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/>
                    <span style="box-sizing:content-box;position:absolute;top:44px;left:30px;width:30px;height:16px;line-height:16px;background:rgba(0, 0, 0, 0.5);color:rgb(255, 255, 255);">吧主</span>
                </a>

                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/home/main/?un=SYQSYQQQ&amp;ie=utf-8&amp;fr=frs"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="SYQSYQQQ">SYQSYQQQ</a>
                                    </div>
            </li>
                                <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                                <a href="http://tieba.baidu.com/home/main/?un=%E7%A5%9E%E5%AE%AB%E5%AF%BA%E9%93%83%E9%A6%99&amp;ie=utf-8&amp;fr=frs"
                                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                                   target="_blank" title="神宫寺铃香">
                    <img src="/images/tieba/9e58e7a59ee5aeabe5afbae99383e9a6995f07.png"
                         type="/images/tieba/png" data-filename="9e58e7a59ee5aeabe5afbae99383e9a6995f07.png" alt="" height="60"
                         style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/>
                    <span style="box-sizing:content-box;position:absolute;top:44px;left:30px;width:30px;height:16px;line-height:16px;background:rgba(0, 0, 0, 0.5);color:rgb(255, 255, 255);">吧主</span>
                </a>

                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/home/main/?un=%E7%A5%9E%E5%AE%AB%E5%AF%BA%E9%93%83%E9%A6%99&amp;ie=utf-8&amp;fr=frs"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="神宫寺铃香">神宫寺铃香</a>
                                    </div>
            </li>
                                <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;text-align:center;float:left;width:60px;margin-bottom:6px;margin-right:0px;">
                                <a href="http://tieba.baidu.com/home/main/?un=slotay&amp;ie=utf-8&amp;fr=frs"
                                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                                   target="_blank" title="黑颜的夜♬">
                    <img src="/images/tieba/2334736c6f746179ec09.jpg"
                         type="/images/tieba/jpeg" data-filename="2334736c6f746179ec09.jpg" alt="" height="60"
                         style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/>
                    <span style="box-sizing:content-box;position:absolute;top:44px;left:30px;width:30px;height:16px;line-height:16px;background:rgba(0, 0, 0, 0.5);color:rgb(255, 255, 255);">吧主</span>
                </a>

                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/home/main/?un=slotay&amp;ie=utf-8&amp;fr=frs"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="黑颜的夜♬">黑颜的夜♬</a>
                                    </div>
            </li>
            <span style="list-style:none;display:table;clear:both;"> </span></ul>



    <p style="box-sizing:content-box;margin:0px;padding:0px;color:rgb(102, 102, 102);">
        <span style="box-sizing:content-box;">小吧：</span>小吧主共<em
            style="box-sizing:content-box;font-style:normal;">10</em>人
    </p>
<p style="box-sizing:content-box;margin:0px;padding:0px;color:rgb(102, 102, 102);">
    <span style="box-sizing:content-box;">会员：</span>
    <a href="http://tieba.baidu.com/bawu2/platform/listMemberInfo?word=java&amp;ie=utf-8"
       style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"
       target="_blank">爪哇猿</a>
        </p>
<p style="box-sizing:content-box;margin:0px;padding:0px;color:rgb(102, 102, 102);">
    <span style="box-sizing:content-box;">目录：</span>
            <a href="http://tieba.baidu.com/f/fdir?fd=%E7%A7%91%E5%AD%A6%E6%8A%80%E6%9C%AF&amp;ie=utf-8&amp;sd=%E7%A8%8B%E5%BA%8F%E8%AE%BE%E8%AE%A1&amp;ie=utf-8"
               style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"
               target="_blank">程序设计</a>
    </p>

<div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:4px;">
            <span style="box-sizing:content-box;"></span>
        </div>


    <span style="display:table;clear:both;"> </span></div>
    <div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:0px;"></div>
</div>
</div><div style="box-sizing:content-box;margin:0px;padding:0px;"><div
                        style="box-sizing:content-box;margin:0px;padding:16px;position:relative;overflow:hidden;border-bottom:1px solid rgb(228, 230, 235);">
    <h4 style="box-sizing:content-box;margin:0px;padding:0px;font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;zoom:1;color:rgb(51, 51, 51);">
        友情贴吧        <span style="box-sizing:content-box;font-size:12px;font-weight:400;float:right;"> </span>
    <span style="font-size:14px;font-weight:700;font-family:&quot;microsoft yahei&quot;, simhei, sans-serif;color:rgb(51, 51, 51);display:table;clear:both;"> </span></h4>
    <div style="box-sizing:content-box;margin:0px;padding:0px;zoom:1;margin-top:10px;">
            <ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;zoom:1;">
                    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                <a href="http://tieba.baidu.com/f?kw=javascript&amp;frs=yqtb"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                   target="_blank" title="javascript">
                <img src="/images/tieba/b58f8c5494eef01f70276779e1fe9925bc317d5e.jpg.png"
                     type="/images/tieba/png" data-filename="b58f8c5494eef01f70276779e1fe9925bc317d5e.jpg.png" alt=""
                     height="60" style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/></a>
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/f?kw=javascript&amp;frs=yqtb"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="javascript">javascript</a>
                </div>
            </li>
                    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                <a href="http://tieba.baidu.com/f?kw=c#&amp;frs=yqtb"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                   target="_blank" title="c#">
                <img src="/images/tieba/7e3e6709c93d70cfa23fbae8f9dcd100bba12b09.jpg.png"
                     type="/images/tieba/png" data-filename="7e3e6709c93d70cfa23fbae8f9dcd100bba12b09.jpg.png" alt=""
                     height="60" style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/></a>
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/f?kw=c#&amp;frs=yqtb"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="c#">c#</a>
                </div>
            </li>
                    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;text-align:center;float:left;width:60px;margin-bottom:6px;margin-right:0px;">
                <a href="http://tieba.baidu.com/f?kw=%E5%8F%B8%E9%A9%AC%E6%B7%BC&amp;frs=yqtb"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                   target="_blank" title="司马淼">
                <img src="/images/tieba/3812b31bb051f819a4acde9fdbb44aed2f73e75e.jpg"
                     type="/images/tieba/jpeg" data-filename="3812b31bb051f819a4acde9fdbb44aed2f73e75e.jpg" alt="" height="60"
                     style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/></a>
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/f?kw=%E5%8F%B8%E9%A9%AC%E6%B7%BC&amp;frs=yqtb"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="司马淼">司马淼</a>
                </div>
            </li>
                    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                <a href="http://tieba.baidu.com/f?kw=c++&amp;frs=yqtb"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                   target="_blank" title="c++">
                <img src="/images/tieba/37d3d539b6003af33d44a6be332ac65c1138b675.jpg"
                     type="/images/tieba/jpeg" data-filename="37d3d539b6003af33d44a6be332ac65c1138b675.jpg" alt="" height="60"
                     style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/></a>
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/f?kw=c++&amp;frs=yqtb"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="c++">c++</a>
                </div>
            </li>
                    <li style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;text-align:center;float:left;width:60px;margin-right:10px;margin-bottom:6px;">
                <a href="http://tieba.baidu.com/f?kw=%E5%AE%89%E5%8D%93%E7%BC%96%E7%A8%8B&amp;frs=yqtb"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;display:inline-block;position:relative;color:rgb(102, 102, 102);width:60px;height:60px;"
                   target="_blank" title="安卓编程">
                <img src="/images/tieba/a50f4bfbfbedab64c9145ef7f336afc379311ea6.jpg"
                     type="/images/tieba/jpeg" data-filename="a50f4bfbfbedab64c9145ef7f336afc379311ea6.jpg" alt="" height="60"
                     style="box-sizing:content-box;border:0px;width:100%;height:100%;" width="60"/></a>
                <div style="box-sizing:content-box;margin:0px;padding:0px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:block;margin-top:-4px;">
                    <a href="http://tieba.baidu.com/f?kw=%E5%AE%89%E5%8D%93%E7%BC%96%E7%A8%8B&amp;frs=yqtb"
                       style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);"
                       target="_blank" title="安卓编程">安卓编程</a>
                </div>
            </li>
            <span style="list-style:none;display:table;clear:both;"> </span></ul>
    <span style="display:table;clear:both;"> </span></div>
    <div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:0px;"></div>
</div>
</div><div style="box-sizing:content-box;margin:0px;padding:0px;"></div><div
                        style="box-sizing:content-box;margin:0px;padding:0px;height:379px;">
<div style="box-sizing:content-box;margin:0px;padding:0px;border-bottom:1px solid rgb(228, 230, 235);background-color:rgb(255, 255, 255);width:238px;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;margin-top:10px;position:relative;line-height:34px;height:33px;">
        <span style="box-sizing:content-box;margin-left:16px;color:rgb(68, 68, 68);font-size:14px;font-weight:700;font-family:STHeiti, &quot;Microsoft Yahei&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif;">贴吧热议榜</span>
    </div>
    <ul style="box-sizing:content-box;margin:0px;list-style:none;padding:0px 16px 10px;">

            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;background:rgb(255, 127, 66);color:rgb(255, 255, 255);padding:1px 4px;margin-right:7px;">1</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224106&amp;topic_name=%E5%9B%BD%E5%BA%86%E5%A5%94%E7%8E%B0"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">国庆奔现</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">726446</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;background:rgb(255, 127, 66);color:rgb(255, 255, 255);padding:1px 4px;margin-right:7px;">2</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224163&amp;topic_name=%E7%8E%8B%E6%80%9D%E8%81%AA%E5%96%B7%E4%B8%AD%E5%9B%BD%E5%AF%BC%E6%BC%94"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">王思聪喷中国导演</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">717577</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;background:rgb(255, 127, 66);color:rgb(255, 255, 255);padding:1px 4px;margin-right:7px;">3</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224060&amp;topic_name=%E5%8A%A0%E5%B8%95%E9%87%8C%E5%88%B6%E4%BD%9C%E6%96%B9%E7%A6%BB%E5%BC%80%E8%A7%92%E5%B7%9D"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">加帕里制作方离开角川</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">685685</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">4</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=223571&amp;topic_name=%E5%AF%BB%E6%89%BE%E8%B4%B4%E5%90%A7%E6%9C%80%E8%90%8C"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">寻找贴吧最萌</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">630539</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">5</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224187&amp;topic_name=%E5%A5%B6%E4%B8%80%E5%8F%A3%E9%AD%94%E7%A6%813"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">奶一口魔禁3</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">617023</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">6</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224162&amp;topic_name=%E7%8E%8B%E8%80%85%E8%8D%A3%E8%80%80%E8%8B%B1%E9%9B%84%E5%8D%B8%E5%A6%86%E7%85%A7"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">王者荣耀英雄卸妆照</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">616752</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">7</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224164&amp;topic_name=%E5%A5%B3%E7%94%9F%E5%8E%BB%E6%95%B4%E7%90%86%E7%94%B7%E7%94%9F%E5%AF%9D%E5%AE%A4"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">女生去整理男生寝室</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">615573</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">8</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224165&amp;topic_name=%E7%AC%AC%E4%B8%80%E6%89%B990%E5%90%8E%E5%B7%B2%E7%BB%8F%E7%A7%83%E4%BA%86"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">第一批90后已经秃了</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">615553</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">9</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224046&amp;topic_name=%E6%83%B3%E7%BB%99%E5%8F%B0%E9%A3%8E%E5%8F%96%E5%90%8D%E7%9A%AE%E7%9A%AE%E8%99%BE"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">想给台风取名皮皮虾</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">615527</span>
            </li>


            <li style="box-sizing:content-box;margin:0px;list-style:none;padding:5px 0px;color:rgb(102, 102, 102);cursor:pointer;">
                <span style="box-sizing:content-box;display:inline-block;text-align:right;width:14px;padding:1px 4px;position:relative;right:7px;">10</span>
                <a href="http://tieba.baidu.com/hottopic/browse/hottopic?topic_id=224052&amp;topic_name=%E5%85%A8%E7%90%83%E6%9C%80%E8%83%96%E5%A5%B3%E6%80%A7%E5%8E%BB%E4%B8%96"
                   style="box-sizing:content-box;background-color:transparent;text-decoration:none;color:rgb(102, 102, 102);white-space:nowrap;text-overflow:ellipsis;overflow:hidden;display:inline-block;width:60%;vertical-align:middle;"
                   target="_blank">全球最胖女性去世</a>
                <span style="box-sizing:content-box;color:rgb(153, 153, 153);float:right;">615523</span>
            </li>

            </ul>
</div>

</div><div style="box-sizing:content-box;margin:0px;padding:0px;">


</div></div></div>        <hr style="box-sizing:content-box;height:0px;margin:0px;padding:0px;"/></div>
    <span style="display:table;clear:both;"> </span></div>
</div></div>
<div style="box-sizing:content-box;padding:0px;margin:0px auto;width:980px;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;">
<div style="box-sizing:content-box;margin:0px;padding:0px;width:980px;margin-left:auto;margin-right:auto;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/frs-footer/f_editor_94fd854.jpg&quot;) repeat;padding-bottom:26px;position:relative;">



		<div style="box-sizing:content-box;margin:0px;padding:0px;">
	<div style="box-sizing:content-box;margin:0px;padding:0px;">




<a name="sub"
   style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;"></a>
<div style="box-sizing:content-box;margin:0px auto;padding:20px 0px 0px;clear:both;width:980px;text-align:left;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;">
        <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;margin-left:20px;">
            <div style="box-sizing:content-box;margin:0px;padding:0px;"></div>



<%--显示发表帖子--%>
			<div style="box-sizing:content-box;margin:0px;padding:0px;margin-left:0px;">
                <form action="/addthread.do" method="post" name="form">
                                <input type="hidden" name="tiebaid" value="${tieba.id}">
                                <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;padding-bottom:15px;">

                    <div style="box-sizing:content-box;margin:0px;padding:0px;">
                        <input type="text" style="width: 720px;" name="title">
                        <!--<div style="box-sizing:content-box;margin:0px;padding:0px;position:absolute;color:rgb(191, 191, 191);cursor:text;top:1px;left:10px;height:30px;line-height:30px;">请填写标题</div>-->

                        <span style="box-sizing:content-box;display:inline-block;width:48px;height:20px;cursor:pointer;position:relative;top:5px;margin-left:3px;"></span>

                    </div>
                    <div style="box-sizing:content-box;padding:0px;margin:6px 6px -6px;color:red;"></div>
                </div>


                                <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;padding-bottom:15px;">


                    <div style="box-sizing:content-box;margin:0px;padding:0px;border:1px solid rgb(223, 223, 223);background:rgb(250, 250, 250);width:720px;">
                        <div style="box-sizing:content-box;margin:0px;padding:0px;position:relative;width:720px;"><div
                                style="box-sizing:content-box;margin:0px;padding:0px 14px;position:relative;width:auto;height:46px;background-color:rgb(250, 250, 250);"><div
                                style="box-sizing:content-box;margin:0px;padding:12px 0px;position:relative;">                            <div
                                style="width:auto;margin:0px;box-sizing:content-box;position:relative;display:inline-block;vertical-align:top;padding:1px 1px 1px 1px;margin-right:0px;border:0px;background:0px 0px;float:right;padding-right:0px;cursor:pointer;"><img
                                src="/images/tieba/8396e81f3a292df5145cece3bc315c6035a87325.jpg.gif"
                                type="/images/tieba/gif" data-filename="8396e81f3a292df5145cece3bc315c6035a87325.jpg.gif"
                                border="0" height="19" style="box-sizing:content-box;border:0px;"
                                width="30"/></div></div><div
                                style="box-sizing:content-box;margin:0px;padding:0px;"></div></div><div
                                style="box-sizing:content-box;margin:0px;padding:0px;border-image:initial;overflow-y:auto;overflow-x:hidden;background-color:rgb(255, 255, 255);border:1px solid rgb(223, 223, 223);"><div
                                style="box-sizing:content-box;margin:0px;padding:0px;font-size:0px;"></div><div
                                style="box-sizing:content-box;margin:0px;padding:0px;">
                            <div
                                    style="outline:none;margin:0px;box-sizing:content-box;min-height:220px;width:708px;overflow-y:auto;padding:0px 0px 0px 0px;word-wrap:break-word;font-size:14px;overflow-x:hidden;background-color:rgb(255, 255, 255);z-index:0;">
                            <p
                                    style="box-sizing:content-box;padding:0px;margin:5px 0px;"></p>
                        <textarea style="width: 100%;min-height: 220px; border: 0px;" name="content"></textarea>


                        </div></div><div
                                style="box-sizing:content-box;margin:0px;padding:0px;font-size:0px;"></div><div
                                style="box-sizing:content-box;margin:0px;padding:0px;font-size:0px;line-height:0;overflow:hidden;"><span
                                style="font-size:0px;line-height:0;clear:both;"> </span></div></div></div>
                    </div>
                    <div style="box-sizing:content-box;padding:0px;margin:6px 6px -6px;color:red;"></div>
                </div>

                                <div style="box-sizing:content-box;padding:0px;zoom:1;margin:0px 240px 0px 0px;padding-bottom:15px;height:28px;">
                    <div style="box-sizing:content-box;margin:0px;padding:0px;">
                        <span style="box-sizing:content-box;">
                            <input type="submit" value="发表"
                                   style="border-bottom-color:rgb(55, 130, 240);box-sizing:content-box;padding:0px 15px;text-decoration:none;border-radius:2px;border:1px solid transparent;cursor:pointer;background:rgb(57, 139, 252);color:rgb(255, 255, 255);display:inline-block;height:28px;line-height:28px;overflow:hidden;font-size:14px;text-align:center;margin-left:20px;"

                            >
                        </span>
                        <span style="box-sizing:content-box;display:block;float:left;width:16px;height:27px;margin:0px 5px;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/poster/loading_9c92dd5.gif&quot;) -20px 5px no-repeat;"></span>



                    </div>
                <span style="display:table;clear:both;"> </span></div>

            </form>
            </div>



                                </div>
    </div>
</div>
</div>	</div>




</div>

</div></div>

    </div>
</div>



<div style="box-sizing:content-box;margin:0px;padding:0px;">













<div style="box-sizing:content-box;margin:0px;padding:0px;position:fixed;bottom:0px;left:50%;margin-left:420px;z-index:10;">
    <a style="box-sizing:content-box;color:rgb(45, 100, 179);text-decoration:none;display:block;cursor:pointer;width:150px;height:85px;z-index:11;background:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/firework_entry_1ca4114.png&quot;) no-repeat;position:relative;"></a>
</div>
<div style="box-sizing:content-box;margin:0px;padding:0px;position:fixed;top:10%;left:50%;margin-left:500px;z-index:1001;">
    <div style="box-sizing:content-box;margin:0px;padding:0px;position:absolute;top:0px;left:-250px;width:230px;padding-left:10px;">


        <div style="box-sizing:content-box;margin:0px;padding:0px;color:rgb(255, 255, 255);width:228px;background:rgba(0, 0, 0, 0.8);opacity:0;"></div>
    </div>
</div>





<div style="left:50%;margin:0px;box-sizing:content-box;padding:0px;z-index:20000;bottom:0px;position:fixed;margin-left:490px;width:0px;height:50px;background-color:rgba(0, 0, 0, 0.6);overflow:hidden;"></div>










<div style="box-sizing:content-box;margin:0px;padding:0px;">

</div>
</div>




<ul style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:fixed;left:50%;bottom:100px;margin-left:498px;z-index:1005;"><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;margin-bottom:20px;"><a
        href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#sub"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:-220px -110px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"></a></li><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;"><a
        href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:-220px 0px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"></a></li><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;"><a
        href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:-110px -165px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"><div
        style="box-sizing:content-box;margin:0px;padding:0px;position:relative;"><div
        style="box-sizing:content-box;margin:0px;padding:0px;width:100%;height:45px;background:0px 0px;"></div></div></a></li><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;"><a
        href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:0px -165px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"></a></li><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;position:relative;"><a
        href="http://tieba.baidu.com/idea/index"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:-110px -110px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"
        target="_blank"></a><div style="box-sizing:content-box;margin:0px;padding:0px;"></div></li><li
        style="box-sizing:content-box;margin:0px;padding:0px;list-style:none;visibility:hidden;"><a
        href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=java&amp;fr=search&amp;red_tag=i3569842091#"
        style="box-sizing:content-box;background-color:transparent;color:rgb(45, 100, 179);text-decoration:none;display:inline-block;width:45px;height:45px;background-repeat:no-repeat;background-position:0px 0px;background-image:url(&quot;http://tb1.bdstatic.com//tb2.bdstatic.com/tb/img/aside_float_bar_z_17bbc07.png&quot;);"></a></li></ul>
<div style="box-sizing:content-box;margin:0px;padding:0px;position:absolute;color:rgb(152, 152, 152);height:26px;font-family:simsun;line-height:26px;"></div><div
                style="width:640px;margin:0px;box-sizing:content-box;visibility:hidden;position:absolute;top:-1000px;padding:0px 9px;height:30px;line-height:30px;font-size:14px;border-width:1px;left:137px;"></div><div
                style="box-sizing:content-box;margin:0px;padding:0px;width:1px;height:1px;overflow:hidden;"></div><div
                style="box-sizing:content-box;margin:0px;padding:0px;"
                title="feedly Mini tookit"></div></div></div></div><br/></div></span>
</div>
</body>
</html>