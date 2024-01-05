<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/ding9util.tld" prefix="ding9"%>
<%--@ page import="com.ding9.util.UrlRewriteManager"--%>
<html>
<head>
<logic:present name="Title"><title><bean:write name="Title" filter="false"/></title></logic:present>
<logic:present name="Desc"><META NAME="description" CONTENT="<bean:write name="Desc" filter="false"/>"></logic:present>
<logic:present name="KeyWords"><META NAME="keywords" CONTENT="<bean:write name="KeyWords" filter="false"/>"></logic:present>
<logic:present name="META"><bean:write name="META" filter="false"/></logic:present>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link href="/css/css2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/comment.js"></script>
<Script Language="Javascript" Src="/js/public.js"></Script>
</head>
<body onLoad="MM_preloadImages('/images/button/button001_1.jpg','/images/button/button002_1.jpg','/images/button/button003_1.jpg','/images/button/button004_1.jpg','/images/button/button012_1.jpg','/images/button/button005_1.jpg','/images/button/button017_1.jpg','/images/button/button013_1.jpg')">
<jsp:include page="/inc/top.do?channelId=${channelId}" flush="true"/>
<link href="/css/css2.css" rel="stylesheet" type="text/css" />
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td width="685" height="526" valign="top">
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td height="30" class="H1">
&nbsp;&nbsp;<a href="http://guide.ding9.com/" class="H1">首页</a>　&gt;　<a href="/index.htm" class="H1">${channelName}</a>　&gt;　<logic:present name="MemtName"><logic:iterate name="MemtName" id="IdMemtName" offset="0"><bean:write name="IdMemtName" property="memt_name"/></logic:iterate></logic:present>
</td>
</tr>
</table>
<table width="99%" border="0" cellspacing="0" cellpadding="0">
<tr><td>
<logic:present name="Top"><bean:write name="Top" filter="false"/></logic:present>
</td></tr>
</table>
<br/>
<table width="700" border="0" cellpadding="1" cellspacing="2" bgcolor="#f6f6f6" class="h12">
<tr>
<td height="416" valign="top" bgcolor="#ffffff">
<div id="layout">
<logic:present name="ArticleInfo">
<logic:iterate name="ArticleInfo" id="IdArticleInfo" offset="0" indexId="index">
<br/>
<a name="TITLE"></a>
<div class="H1b"><bean:write name="IdArticleInfo" property="title" filter="false"/></div>
<hr noshade size="0" color="#C0C0C0">
<div class="pimg" align="center">
<logic:notEqual name="IdArticleInfo" property="source" value="">来源：<bean:write name="IdArticleInfo" property="source" filter="false"/></logic:notEqual><logic:notEqual name="IdArticleInfo" property="author" value=""><logic:notEqual name="IdArticleInfo" property="source" value="">&nbsp;|&nbsp;</logic:notEqual>作者：<bean:write name="IdArticleInfo" property="author" filter="false"/></logic:notEqual><logic:equal name="IdArticleInfo" property="source" value=""><logic:notEqual name="IdArticleInfo" property="author" value="">&nbsp;|&nbsp;</logic:notEqual></logic:equal><logic:notEqual name="IdArticleInfo" property="source" value=""><logic:equal name="IdArticleInfo" property="author" value="">&nbsp;|&nbsp;</logic:equal></logic:notEqual><logic:notEqual name="IdArticleInfo" property="source" value=""><logic:notEqual name="IdArticleInfo" property="author" value="">&nbsp;|&nbsp;</logic:notEqual></logic:notEqual><bean:write name="IdArticleInfo" property="release_time" filter="false"/>
</div>
<table width="700" border="0" cellpadding="1" cellspacing="2" bgcolor="#f6f6f6" class="h12" id="mainTable">
<tr>
<td>
<div id="show_Contents"><bean:write name="IdArticleInfo" property="content_curr_page" filter="false"/></div>
</td>
</tr>
</table>
<div align="center">
<%-- <logic:present name="Url"><bean:write name="Url" filter="false"/></logic:present> --%>
<ding9:page pageCount="${CountPage}" currentPage="${CurrentPage}" url="${PageUrl}"/>
</div>
</logic:iterate></logic:present></div>
</td>
</tr>
</table><br/>
<logic:present name="Bottom"><bean:write name="Bottom" filter="false"/></logic:present>
</td>
<td width="200" align="right" valign="top"><logic:present name="MessageManageType"><logic:iterate name="MessageManageType" id="IdMessageManageType" offset="0" indexId="index"><logic:present name="IdMessageManageType" property="article_relation">
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td height="107" align="right" valign="top" bgcolor="#FFFFFF">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td height="30" align="left" bgcolor="#F3F3F3" class="H6c">&nbsp;<bean:write name="IdMessageManageType" property="memt_name" filter="false"/></td></tr>
<tr>
<td height="36" align="left" valign="top"><br/>
<div class="div9">
<ul><logic:iterate id="IdArticleRelation" name="IdMessageManageType" property="article_relation" offset="0" indexId="seq"><logic:lessThan name="seq" value="8"><logic:equal name="IdArticleRelation" property="display" value="1"><bean:define id="article_id" name='IdArticleRelation' property="article_id" type="java.lang.Integer"/>
<%--
<li><a href="<%=UrlRewriteManager.dynamic2static("/news/news-info.do?article_id="+article_id+"&channelId="+channel_id)%>" class="H1"><bean:write name="IdArticleRelation" property="title" filter="false"/></a></li>
--%>
<li><a href="<c:url value="/news/news-info.do?article_id=${article_id}&prso_id_one=${newsInfoForm.prso_id_one}&prso_name_one_en=${newsInfoForm.prso_name_one_en}"/>" class="H1"><bean:write name="IdArticleRelation" property="title" filter="false"/></a></li>
</logic:equal><logic:notEqual name="IdArticleRelation" property="display" value="1"><logic:notEqual name='IdArticleRelation' property="url" value=""><bean:define id="url" name='IdArticleRelation' property="url" type="java.lang.String"/>
<%--
<li><a href="<%=url%>" target="_blank" class="H1"><bean:write name="IdArticleRelation" property="title" filter="false"/></a></li>
--%>
<li><a href="<c:url value="${url}"/>" target="_blank" class="H1"><bean:write name="IdArticleRelation" property="title" filter="false"/></a></li>
</logic:notEqual></logic:notEqual></logic:lessThan></logic:iterate></ul>
</div>
</td>
</tr>
<logic:greaterThan name="IdMessageManageType" property="article_size" value="0">
<tr>
<td height="18" align="right"><bean:define id="memt_id" name='IdArticleRelation' property="memt_id" type="int"/>
<%--
<a href='<%=UrlRewriteManager.dynamic2static("/news/news-list.do?memt_id="+memt_id+"&article_id=&relation_type=1&relation_value="+channel_id+"&prso_id_one="+channel_id+"&page_size=20&current_page=1")%>' title="查看更多"><img src="/images/ss/gif-0360.gif" width="41" height="11" border="0"/></a>
--%>
<a href='<c:url value="/news/news-list.do?memt_id=${memt_id}&prso_id_one=${newsInfoForm.prso_id_one}&prso_name_one_en=${newsInfoForm.prso_name_one_en}"/>' title="查看更多"><img src="/images/ss/gif-0360.gif" width="41" height="11" border="0"/></a>
</td>
</tr></logic:greaterThan>
</table>
</td>
</tr>
</table>
<br/></logic:present></logic:iterate></logic:present>
</td>
</tr>
</table>
<iframe name="ding9bottomIframe" src="http://beauty.ding9.com/inc/bottom.jsp" frameborder="0" width="100%" marginwidth="0" marginheight="0" height="130" scrolling="no"></iframe>
<script language="javascript">
var uid="1190356933";
var MAX_PER_KEY=5;
var S__699_ADVERTISMENT="show_Contents";
</script>
</body>
</html>
