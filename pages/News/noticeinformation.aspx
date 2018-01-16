<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoticeInfodescribe.aspx.cs" Inherits="pages_Infodescribe"  %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
<title>南京邮电大学淮安互联网技术研发与应用中心</title>
<link rel="stylesheet" type="text/css" href="../Assets/css/reset.css"/>
<script type="text/javascript" src="../Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="../Assets/plugins/FlexSlider/flexslider.css"/>
<script type="text/javascript" src="../Assets/plugins/FlexSlider/jquery.flexslider.js"></script>
<link rel="stylesheet" type="text/css" href="../Assets/css/thems.css"/>
<link rel="stylesheet" type="text/css" href="../Assets/css/responsive.css"/>    
</head>
<body>
    <div class="head clearfix">
    <div class="logo"><a href="http://www.njupt.edu.cn/" target=blank><img src="../Assets/images/njupt.png" alt="南邮"/></a></div>
    <div class="logo_name"><img src="../Assets/images/HuaiAn.png" alt="淮安研究院"/></div>
    <!-- 天气预报 -->
    <div class="weather">
         <iframe class="nanjing" name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=99"  frameborder="0"  align="right" scrolling="no"></iframe>
        </iframe>
    </div>
</div>
<div class="n_bg">
	<div class="nav_m">
        <div class="n_icon">导航栏</div>
        <ul class="nav clearfix">
            <li><a href="../index.html"><i>&nbsp;</i>首页</a></li>
            <li>
                <a href="../About/yanjiuyuanabout.html"><i>&nbsp;</i>关于我们</a>
                <div class="er clearfix">
                    <a href="../About/yanjiuyuanabout.html">研究院简介</a>
                    <a href="../About/zuzhijiegouabout.html">组织结构</a>
                    <a href="../About/yanjiulingyuabout.html">研究领域</a>
                </div>
            </li>
            <li class = "now">
                <a href="collogenews.html"><i>&nbsp;</i>新闻中心</a>
                <div class="er clearfix">
                    <a href="collogenews.html">研究院要闻</a>
                    <a href="notice.html">通知公告</a>
                    <a href="industrydynamics.html">行业动态</a>
                </div>
            </li>
            <li>
                <a href="../Product/project.html"><i>&nbsp;</i>产品技术</a>
                <div class="er clearfix">
                    <a href="../Product/project.html">研发项目</a>
                    <a href="../Product/result.html">研究成果</a>
                    <a href="../Product/patent.html">技术专利</a>
                </div>
            </li>
            <li>
                <a href="../Team/talent.html"><i>&nbsp;</i>人才队伍</a>
                <div class="er clearfix">
                    <a href="../Team/talent.html">人才队伍</a>
                    <a href="../Team/recruit.html">人才招聘</a>
                </div>
            </li>
            <li>
                <a href="../Contact/contact.html"><i>&nbsp;</i>联系我们</a>
                <div class="er clearfix">
                    <a href="../Contact/contact.html">联系研究院</a>
                    <!-- <a href="../Contact/recruit.html">人才招聘</a> -->
                   <!--<a href="Contact/message.html">客户留言</a> -->
                </div>
            </li>
        </ul>
    </div>
</div>
<!--头部-->
<!--幻灯片-->
<div class="banner banner_s"><img src="../Assets/upload/banner_n.jpg" alt=""/></div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
    <div class="scd_n">
    	<div class="dq">
            <div class="pst">
            	<span>您的位置：</span>
                <a href="index.html">首页</a>
                <span>></span>
                <a href="collogenews.html">新闻中心</a>
                <span>></span>
                <a href="" class="on">通知公告</a>
            </div>
        </div>
        <div class="scd_m">
			<div class="dq">
				<h2><span>&nbsp;</span><asp:Label ID="Label3" runat="server" Text=""></asp:Label></h2>
				<div class="releasetime"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></div> 
			</div>
			</div>
			<div class="service">
            <p><span>&nbsp;&nbsp;</span> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
<p></p><br/>
			 <p></p><br/>
            </div>
        </div>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="bg_c">
	<div class="bq">版权所有：南京邮电大学淮安互联网研究院©2017 苏ICP备170xxxxx号</div>
</div>
</body>
</html>
