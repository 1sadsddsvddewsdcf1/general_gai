<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld" %>
<%@ taglib prefix="bean" uri="/WEB-INF/struts-bean.tld" %>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib prefix="ding9util" uri="/WEB-INF/ding9util.tld"%>
<html>
<head>

<% 
	String channelTitle ="外贸服装,韩国服装,背背佳,服饰批发,防辐射服装 报价:顶九比较购物网-guide.ding9.com"; 
	String channelId = request.getAttribute("ChannelId")+"";
	if(channelId.equals("9")){
		channelTitle = "饰品,天然水晶,戒指批发,宝石,银饰等饰品报价:顶九比较购物网-guide.ding9.com ";	
	}
%>

<title></title>
 

<META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"/>
<META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像"/>
<META NAME="Author" CONTENT="顶九网"/>
<META NAME="Subject" CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南"/>
<META NAME="Robots" CONTENT="all"/>
<META NAME="copyright" CONTENT="ding9.com"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href='<bean:write name="folder"/>ty.css' rel="stylesheet" type="text/css"/>
<link href='/css/div.css' rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="/inc/top.do?channelId=${ChannelId}" flush="true"/>
<center>
<link href='<bean:write name="folder"/>ty.css' rel="stylesheet" type="text/css"/>
<link href='/css/div.css' rel="stylesheet" type="text/css"/>
<div id="ty001" style="margin-top:10px;margin-bottom:10px"><%--主体开始--%>
<div id="ty001_l">
<div class="tyd001"></div><%--商品分类--%>
<div class="tyd002"><logic:present name="sortVO"><bean:write name="sortVO" property="content" filter="false"/></logic:present></div><%--tyd002--%>
<div class="tyd003">
<a href='${MainServer}<c:url value="/switch.do?msg=leibie"/>' target="_blank"><img src='<bean:write name="folder"/>more.jpg' width="50" height="15" border="0"></a>
</div></div><%--ty001_l--%>
<div id="ty001_r">
<div id="ty002">
<div id="ty002_l"><%-- 轮播广告 --%><jsp:include page="/js/ad.jsp" flush="true"/></div>
<div id="ty002_r"><logic:present name="direList"><%-- 专业导购 --%>
<div class="tyd004"></div>
<div class="tyd005">
<div class="tyk2">
<ul><logic:iterate name="direList" id="vo" offset="0" indexId="seq">
<li><bean:define id="dire_id" name="dire_info_id" type="int"/><bean:define id="article_id" name="vo" property="articleId" type="int"/><bean:define id="dire_title" name="vo" property="title" type="java.lang.String"/>
<a target="_blank" href='<c:url value="/news/news-info.do?article_id=${article_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' class="tH3"><ding9util:substring title="${dire_title}" length="12"/></a></li>
</logic:iterate></ul></div></div><%--tyd005--%>
<div class="tyd006">
<a href='<c:url value="/news/news-list.do?memt_id=${dire_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' target="_blank"><img src='<bean:write name="folder"/>more.jpg' width="50" height="15" border="0"></a>
</div></logic:present></div><%--ty002_r--%></div><%--ty002--%>
<div class="tyd007"><%-- 文字广告 --%><marquee scrollAmount="2" width="450" onmouseover="stop()" onmouseout="start()"><logic:present name="textAds"><logic:iterate name="textAds" id="vo"><a href='<bean:write name="vo" property="adad_address"/>' class="tH2" target="_blank"><bean:write name="vo" property="adad_word" filter="false"/></a>&nbsp;&nbsp;</logic:iterate></logic:present></marquee></div>
<div class="tyk1">
<ul><logic:present name="recomProducts">
<logic:iterate name="recomProducts" id="vo">
<bean:define id="prma_id" name="vo" property="prmaId" type="int"/>
<bean:define id="prma_name" name="vo" property="prmaName" type="java.lang.String"/>
<bean:define id="recom_prma_price" name="vo" property="min_price" type="java.lang.Integer"/>
<li>

<a href='${MainServer}
<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>'
 target="_blank">
 <img src='<bean:write name="vo" property="picAddress"/>' 
 alt='<bean:write name="vo" property="prmaName"/>' width="80" height="80" border="0"></a><br>

<a href='${MainServer}
<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' 
class="tH3" target="_blank">
<ding9util:substring title="${prma_name}" length="4"/></a>

<br><span class="tH2">${recom_prma_price}元</span>
</li>
</logic:iterate></logic:present></ul>
</div><%--tyk1--%>
<div id="c0202"><div id="c0202_l"><logic:present name="middleFlashAds"><bean:write name="middleFlashAds" filter="false"/></logic:present></div><div id="c0202_r"><logic:present name="middleButtonAds"><bean:write name="middleButtonAds" filter="false"/></logic:present></div></div>
</div><%--ty001_r--%></div><%--ty001--%>
<div id="ty003">
<div id="ty003_l">
<logic:present name="bottomPicAds"><logic:iterate name="bottomPicAds" id="vo"><a href='<bean:write name="vo" property="adad_address"/>' target="_blank"><img src='<bean:write name="vo" property="adad_pic"/>' width="210" height="180" border="0"></a></logic:iterate></logic:present>
<logic:present name="evaList"><%-- 时尚魅力 --%>
<div class="tyd008"></div>
<div class="tyd009">
<div class="tyk2">
<ul><logic:iterate name="evaList" id="vo" offset="0" indexId="seq"><li><bean:define id="eva_id" name="eva_info_id" type="int"/><bean:define id="article_id" name="vo" property="articleId" type="int"/><bean:define id="eva_title" name="vo" property="title" type="java.lang.String"/>
<a href='<c:url value="/news/news-info.do?article_id=${article_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' class="tH3" target="_blank"><ding9util:substring title="${eva_title}" length="13"/><!-- 26 --></a></li>
</logic:iterate></ul>
</div></div><%--tyd009--%>
<div class="tyd010">
<a href='<c:url value="/news/news-list.do?memt_id=${eva_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' target="_blank"><img src='<bean:write name="folder"/>more.jpg' width="50" height="15" border="0"></a>
</div>
</logic:present>
</div><%--ty003_l--%>
<div id="ty003_r">
<div id="ty004">
<div id="ty004_l">
<div class="tyd014"><span class="tH4c">.劲.爆.热.销.</span></div>
<div id="ty005">

<div id="ty005_l"><logic:present name="oneHotProducts">
<logic:iterate name="oneHotProducts" id="vo">
<bean:define id="prma_id" name="vo" property="prmaId" type="int"/>
<bean:define id="name" name="vo" property="prmaName" type="java.lang.String"/>
<bean:define id="hot_prma_price1" name="vo" property="min_price" type="java.lang.Integer"/>
<div id="ty006">
<div id="ty006_l">
<a href='${MainServer}
<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}
&prso_name_one_en=${PrsoNameOneEn}"/>' target="_blank">
<img src='<bean:write name="vo" property="picAddress"/>' 
alt='<bean:write name="vo" property="prmaName"/>' width="80" height="80" border="0">
</a>
</div>
<div id="ty006_r">
<A href='${MainServer}
<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}
&prso_name_one_en=${PrsoNameOneEn}"/>' class="tH3" target="_blank" >
<ding9util:substring title="${name}" length="8"/>
</A>

<br/><span class="tH2">${hot_prma_price1}元</span></div></div>
</logic:iterate></logic:present>
</div><%--ty005_l--%>

<div id="ty005_m"><logic:present name="middlePicAds"><logic:iterate name="middlePicAds" id="vo"><a href='<bean:write name="vo" property="adad_address"/>' target="_blank"><img src='<bean:write name="vo" property="adad_pic"/>' width="190" height="248" border="0"></a></logic:iterate></logic:present></div><%--ty005_m--%>
<div id="ty005_r"><logic:present name="twoHotProducts"><logic:iterate name="twoHotProducts" id="vo"><bean:define id="prma_id" name="vo" property="prmaId" type="int"/><bean:define id="name" name="vo" property="prmaName" type="java.lang.String"/><bean:define id="hot_prma_price2" name="vo" property="min_price" type="java.lang.Integer"/>
<div id="ty006">
<div id="ty006_l">
<a href='${MainServer}<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' target="_blank"><img src='<bean:write name="vo" property="picAddress"/>' alt='<bean:write name="vo" property="prmaName"/>' width="80" height="80" border="0"></a>
</div>
<div id="ty006_r">
<A href='${MainServer}<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}"/>' target="_blank" class="tH3" title="商品名"><ding9util:substring title="${name}" length="8"/></A>
<span class="tH2">${hot_prma_price2}元</span></div></div></logic:iterate></logic:present></div><%--ty005_r--%></div><%--ty005--%></div><%--ty004_l--%>
<div id="ty004_r">
<div class="tyd011"></div>
<div class="tyd012">
<div class="tyk3">
<ul><logic:present name="comments"><logic:iterate name="comments" id="vo"><bean:define id="prma_id" name="vo" property="prmaId" type="int"/><bean:define id="prso_id" name="vo" property="prsoId" type="int"/><bean:define id="comment_title" name="vo" property="title" type="java.lang.String"/>
<li><a target="_blank" href='${MainServer}<c:url value="/product/product-info.do?prma_id=${prma_id}&prso_id_one=${ChannelId}&prso_name_one_en=${PrsoNameOneEn}&type=comment"/>#viewc' class="tH9"><ding9util:substring title="${comment_title}" length="10"/></a></li>
</logic:iterate></logic:present></ul>
</div></div><%--tyd012--%>
<div class="tyd013"></div></div><%--ty004_r--%></div><%--ty004--%>
<div class="tyd015"><span class="tH1c_l">.推.荐.商.家.</span></div>
<div class="tyk4"><ul><logic:present name="merchants"><logic:iterate name="merchants" id="vo"><li>
<logic:notEqual value="0" name="vo" property="flag">
<bean:write name="vo" filter="false" property="mere_adress"/>
</logic:notEqual>
<logic:equal value="0" name="vo" property="flag">
<a href='<bean:write name="vo" property="mere_adress"/>' target="_blank"><img src='<bean:write name="vo" property="mere_logo"/>' alt='<bean:write name="vo" property="mere_name"/>' width="100" height="30" border="0"></a>
</logic:equal>

</li></logic:iterate></logic:present></ul></div><%--tyk004--%>
<div id="ty007"><div class="tH8" id="ty007_l">合作<BR>  媒体</div><div id="ty007_r"><logic:present name="cooperateVO"><bean:write name="cooperateVO" property="content" filter="false"/></logic:present></div></div><%--ty007--%></div><%--ty003_r--%></div><%--ty003--%><%--结束--%>
<iframe name="ding9bottomIframe" src="${ChannelBeauty}/inc/bottom.jsp" frameborder="0" width="100%" marginwidth="0" marginheight="0" height="130" scrolling="no"></iframe>
</center>
<c:if test="${channelId==5}"><script type="text/javascript">var stat_type="d9cloting_homepage";</script></c:if>
<c:if test="${channelId==9}"><script type="text/javascript">var stat_type="d9jingpin_homepage";</script></c:if>
<script type="text/javascript" src="http://click.ding9.com/js/stat.js"></script>
</body>
</html>

<script>
window.document.title = "<%=channelTitle%>";
</script> 
