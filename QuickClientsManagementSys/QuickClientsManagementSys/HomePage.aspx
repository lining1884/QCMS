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

        function show() {
            var login = document.getElementById('login');
            var over = document.getElementById('over');  
            login.style.display = "block";  
            over.style.display = "block";  
        }  
        function hide(){  
            var login = document.getElementById('login');  
            var over = document.getElementById('over');    
            login.style.display = "none";  
            over.style.display = "none";  
        }  
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="root">
            <div id="TitleImg" style="background-size:contain; border-bottom-width:0px; Width:1332px; height:70px; background-image:url(Img/home.png)"><%----系统名称----%>
                <%--<asp:Image ImageUrl="~/Img/home.png" runat="server" Width="1330" BorderStyle="None"/>--%>
                <input type="button" onclick="show();" style="margin-left:100px;" value="点击"/>  
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
            
            <div><!--div弹出层-->
                <div id="login">  
                    <div style="position:absolute; top:22%; left:28%;">
                   <div style="position:absolute;  "><!--用户名-->
                       <div style="position:absolute; float:left; width:80px;"><span style="width:80px;">用户名：</span></div>
                       <div style="position:absolute; margin-left:100px;"><asp:TextBox runat="server" ID="userName" Text="" Width="100px" ></asp:TextBox>
                           <asp:RegularExpressionValidator Text="用户名不正确" runat="server" ControlToValidate="userName" EnableClientScript="true" ValidationExpression="\w+" ForeColor="Red"></asp:RegularExpressionValidator>
                       </div>
                   </div>
                   <div style="position:absolute; margin-top:45px; "><!--密码-->
                       <div style="position:absolute; float:left; width:80px;"><span style="width:80px;">密码：</span></div>
                       <div style="position:absolute; margin-left:100px;"><asp:TextBox runat="server" ID="userPWD" Text="" Width="100px" ></asp:TextBox></div>
                   </div>
                   <div style="position:absolute; margin-top:90px; "><!--用户等级-->
                       <div style="position:absolute; float:left; width:80px;"><span style="width:80px;">用户等级：</span></div>
                       <div style="position:absolute; margin-left:100px;"><asp:DropDownList runat="server" ID="ddluserLevel" Width="100px" >
                            <asp:ListItem Text="超级管理员" Value="0"></asp:ListItem>
                            <asp:ListItem Text="普通用户" Value="1"></asp:ListItem>
                            </asp:DropDownList></div>
                   </div>
                   <div style="position:absolute; margin-top:150px; "><!--添加取消按钮-->
                       <div style="position:absolute; float:left;"><asp:Button runat="server" ID="btnSubmit" Text="添加" Width="60px" OnClick="btnSubmit_Click" ></asp:Button></div>
                       <div style="position:absolute; margin-left:100px;"><asp:Button runat="server" ID="btnCancel" Text="取消" Width="60px" ></asp:Button></div>
                   </div>
                   </div>
                </div>
                <div id="over"></div> 
            </div>
        </div>
    </form>
</body>
</html>

