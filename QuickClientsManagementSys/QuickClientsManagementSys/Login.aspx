<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" href="Content/StyleSheet.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center;">
        <div class="d1">
            <div style="width:auto;background-color:green;position:absolute; top:60px;">
                <div style=" width:100px; position:absolute; text-align:right;">
                    <asp:Label ID="lblUser"  Text="用户名：" runat="server" />
                </div>
                <div style=" width:100px; position:absolute;left:110px;">
                    <asp:Textbox ID="tbxUser" Text="" Width="100px" runat="server" />
                </div>
            </div>

            <div style="width:auto; position:absolute; top:90px;">
                <div style=" width:100px; position:absolute; text-align:right;">
                    <asp:Label ID="lblPassWord"  Text="密码：" runat="server" />
                </div>
                <div style="width:100px; position:absolute;left:110px;">
                    <asp:Textbox ID="tbxPassWord"  Text="" Width="100px" runat="server" />
                </div>
            </div>

            <div style="width:auto;position:absolute; top:120px;">
                <div style=" width:100px; position:absolute; text-align:right;">
                    <asp:Label ID="lblValidation"  Text="验证码:" runat="server" />
                </div>
                <div style="width:44px; position:absolute;left:110px;">
                    <asp:Textbox ID="tbxValidation" Text="" Width="40px" runat="server" />
                </div>
                <div style=" width:44px; position:absolute;left:160px;">
                    <asp:Image ID="imgValidation" ImageUrl="~/img/Close.png" runat="server" />
                </div>
            </div>

            <div id="nama">
                <div style="width:100px; position:absolute; text-align:right;">
                    <asp:Button ID="btnLogin"  Text="登录" runat="server" OnClick="btnLogin_Click" />
                </div>
                <div style="width:100px; position:absolute;left:110px;">
                    <asp:Button ID="btnCancle" Text="取消" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
