using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserManagement : System.Web.UI.Page
{
    OracleDB orcl = new OracleDB();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //绑定所有用户数据
            //1. 查询user表中的所有数据
            //2. 构造符合显示的数据
            //3. 绑定数据
            this.gvUserList.DataSource = GrenerateUserListFromDT(this.GetUserInfosFromDB());
            this.gvUserList.DataBind();
        }

    }

    #region 查询user表中的所有数据
    /// <summary>
    /// 查询user表中的所有数据
    /// </summary>
    /// <returns>用户数据表</returns>
    private DataTable GetUserInfosFromDB()
    {
        DataTable dt = new DataTable();
        string strSql = "select t.userid,t.username,t.userlevel,t.userstatus, t.rowid from TABUSER t";
        DataSet ds = orcl.ReturnDataSet(strSql, "usersInfo");
        dt = ds.Tables["usersInfo"];
        return dt;
    }
    #endregion

    #region 把用户数据表转换成用户数据集合
    /// <summary>
    /// 把用户数据表转换成用户数据集合
    /// </summary>
    /// <param name="dt">用户数据表</param>
    /// <returns>用户数据集合</returns>
    private List<UserInfo> GrenerateUserListFromDT(DataTable dt)
    {
        int i = 1;
        List<UserInfo> userList = new List<UserInfo>();
        foreach(DataRow dr in dt.Rows)
        {
            UserInfo user = new UserInfo();
            user.indexid = (i).ToString();
            user.rowid = dr["rowid"].ToString();
            user.userid = dr["userid"].ToString();
            user.userName = dr["username"].ToString();
            if (dr["userlevel"].ToString().Equals("0"))
            {
                user.userLevel = "超级管理员";
            }
            else
            {
                user.userLevel = "普通用户";
            }

            if (dr["userstatus"].ToString().Equals("0"))
            {
                user.userStatus = "已删除";
            }
            else
            {
                user.userStatus = "可用";
            }
            i++;
            userList.Add(user);
        }

        return userList;
    }
    #endregion

    protected void gvUserList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvUserList.PageIndex = e.NewPageIndex;
        this.gvUserList.DataSource = GrenerateUserListFromDT(this.GetUserInfosFromDB());
        this.gvUserList.DataBind();
    }
}