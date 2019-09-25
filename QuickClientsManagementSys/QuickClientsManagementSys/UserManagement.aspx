<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><!--操作控件-->
                <div style="position:absolute;"><!--查询控件-->
                <div style="position:absolute; float:left;">
                    <asp:TextBox runat="server" Width="120px" ></asp:TextBox>
                </div>
                <div style="position:absolute; margin-left:130px;">
                    <asp:Button runat="server" Width="60px" Text="查询" />
                </div>
                </div>
                <div style="position:absolute; margin-left:124px;">
                    <div style="position:absolute; margin-left:188px;"><!--添加控件-->
                        <asp:Button runat="server" Width="60px" Text="添加" />
                    </div>
                    <div style="position:absolute; margin-left:252px;"><!--修改控件-->
                        <asp:Button runat="server" Width="60px" Text="修改" />
                    </div>
                    <div style="position:absolute; margin-left:316px;"><!--删除控件-->
                        <asp:Button runat="server" Width="60px" Text="删除" />
                    </div>
                </div>
            </div>
            <div style="position:absolute; margin-top:25px;"><!--列表控件-->
                <asp:GridView ID="gvUserList" runat="server" AutoGenerateColumns="false" AllowPaging="true" GridLines="Both" Width="660px" OnPageIndexChanging="gvUserList_PageIndexChanging" >
                    <Columns>
<%--                        <asp:CheckBoxField HeaderText="选择" Text="@indexid"/>--%>
                        <asp:TemplateField >
                            <HeaderTemplate>
                                <asp:Label Text="选择" runat="server" Width="60px"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox runat="server"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="用户ID" DataField="userid" ItemStyle-Width="25%"/>
                        <asp:BoundField HeaderText="用户名" DataField="userName" />
                        <asp:BoundField HeaderText="用户等级" DataField="userLevel" ItemStyle-Width="25%"/>
                        <asp:BoundField HeaderText="用户状态" DataField="userStatus" ItemStyle-Width="25%"/>
                    </Columns>
                    <HeaderStyle Font-Bold="true" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
