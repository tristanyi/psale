<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>显示所有库存</title>
		<link href="css/mycss.css" rel="stylesheet" type="text/css" />
		<link href="css/circleconer.css" rel="stylesheet" type="text/css" />
		<link rel="shortcut icon" href="img/favicon.ico"/>
		<script language="javascript" src="js/jquery-1.4.2.js"></script>

		<script language="javascript" src="js/showallwuliao.js"></script>

		<style type="text/css">
<!--
.STYLE4 {
	color: #FF0000;
	font-size: 36px;
	font-family: "楷体_GB2312";
}
-->
</style>
	</head>
	<body>
		<h3 align="center">
			以下是所有库存显示页面
			<a href="kucunpdf.action" id="pdf"><img src="img/pdf.jpg"
					width="70" height="70" /> </a>
		</h3>
		<a href="index2.jsp">返回首页</a>
		<hr />
		<div align="center">
			<div id="contain" class="contain2">
				<div class="containtop">
					<div class="tleft"></div>
					<div class="tright"></div>
				</div>
				<div class="containrcenter">
					<div class="containcenter">
						<div align="center" style="z-index: 20">
							<table border="0" style="border: 1px solid #c3d9ff;"
								cellpadding="1" cellspacing="2" width="800">
								<tr bordercolor="#c3d9ff">
									<td>
										编号
									</td>
									<td>
										名称
									</td>
									<td>
										数量
									</td>
									<td>
										价格
									</td>
									<td>
										开单工号
									</td>
									<td>
										日期
									</td>
									<td>
										备注信息
									</td>
								</tr>
								<s:iterator value="wuliaolist" status="ls">
									<tr bordercolor="#c3d9ff">
										<td>
											<s:property value="pid" />
										</td>
										<td>
											<s:property value="inname" />
										</td>
										<td>
											<s:property value="innum" />
										</td>
										<td>
											<s:property value="inprice" />
										</td>
										<td>
											<s:property value="inuserid" />
										</td>
										<td>
											<s:property value="indate" />
										</td>
										<td>
											<s:property value="productsdetail" />
										</td>
									</tr>
								</s:iterator>
							</table>
						</div>
					</div>
				</div>
				<div class="containbottom">
					<div class="bleft"></div>
					<div class="bright"></div>
				</div>
			</div>
		</div>
		<div id="page" align="center">
			<a href="lookwuliaoaction.action?pageNo=${pageNo-1}">&lt;&lt;上一页</a>
			目前是第
			<font color="red">${pageNo}</font>页,共
			<font color="red">${sumpage}</font>页
			<a href="lookwuliaoaction.action?pageNo=${pageNo+1}">下一页&gt;&gt;</a>
		</div>
		<div id="reporttip">
			<div class="STYLE4" id="reporttipcontent">
				<div align="center">
					系统正在为您准备pdf文件,请不要重复点击，谢谢！
				</div>
			</div>
			<div id="reportwait">
				<img src="img/img-loading.gif" />
			</div>
		</div>
	</body>
</html>