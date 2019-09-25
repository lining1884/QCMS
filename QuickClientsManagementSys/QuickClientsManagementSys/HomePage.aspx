<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>***管理系统</title>
    <link type="text/css" href="Content/StyleBase.css" rel="stylesheet"/>
    <script type="text/javascript">
        function LinkedLoadPage(URL) {
            alert(URL);
            document.getElementById("ContentPage").src = URL;
        }
  
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="root">
            <div id="TitleImg" style="background-size:contain; border-bottom-width:0px; Width:1332px; height:70px; background-image:url(Img/home.png)"><%----系统名称----%>
                <%--<asp:Image ImageUrl="~/Img/home.png" runat="server" Width="1330" BorderStyle="None"/>--%>
            </div>
            <div id="MainForm" style="position:absolute;width:1330px; height:100%; " >
                <div id="MenuLeft" style="position:absolute; float:left; width:160px; height:100%; " ><%----主菜单----%>
                    <div id="Menus" style="position:absolute; float:left;" runat="server">
                        <ul>
                            <li style="height: 16px; cursor:pointer;" onclick="LinkedLoadPage('UserManagement.aspx')">商品品牌管理</li>
                            <li onclick="LinkedLoadPage('MenuManagement.aspx')">商品型号管理</li>
                        </ul>
                    </div>
                </div>
                <div id="contentForm" style="position:absolute; float:right; margin-left:162px; width:1170px; height:100%;"><%----功能页面----%>
                    <iframe id="ContentPage" src="UserManagement.aspx" style="width:1160px; height:100%; border-left-width:0px; border-top-width:0px;border-bottom-width:0px;border-right-width:0px;"></iframe>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
