using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HomePage : System.Web.UI.Page
{
    OracleDB orcl = new OracleDB();

    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = "100000";//Request.QueryString["userid"].ToString();

        //接收userid后，查询数据库得到该用户的权限菜单
        List<UserMenu> umList = GetUserMenusByUserId(userid);
        string strHtml = "<ul>";
        foreach (UserMenu um in umList)
        {
            strHtml = strHtml + "<li style=\"cursor:pointer;\" onclick=\"LinkedLoadPage('" + um.menuURL.ToString() + "')\">" + um.menuName.ToString() + "</li>";
        }
        strHtml = strHtml + "</ul>";

        this.Menus.InnerHtml = strHtml;

    }

    //根据用户Id查找相应的权限菜单
    private List<UserMenu> GetUserMenusByUserId(string userid)
    {
        string strsql = "select s.userid, m.menuid, m.menuname, m.meuurl from tabusermenus s, tabmenu m where s.menuid=m.menuid and s.userid='" + userid + "'";
        List<UserMenu> userMenusList = new List<UserMenu>();
        DataSet ds = orcl.ReturnDataSet(strsql, "UserMenus");
        if (ds != null)
        {
            if (ds.Tables.Count != 0)
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //for(int i=0;i< ds.Tables[0].Rows.Count;i++)
                    //{
                    //    UserMenu um = new UserMenu();
                    //    um.userid = ds.Tables["UserMenus"].Rows[i]["userid"].ToString();
                    //    um.menuid = ds.Tables[0].Rows[i]["menuid"].ToString();
                    //    um.menuName = ds.Tables[0].Rows[i]["menuname"].ToString();
                    //    um.menuURL = ds.Tables[0].Rows[i]["meuurl"].ToString();
                    //    userMenusList.Add(um);
                    //}

                    foreach (DataRow dr in ds.Tables["UserMenus"].Rows)
                    {
                        UserMenu um = new UserMenu();
                        um.userid = dr["userid"].ToString();
                        um.menuid = dr["menuid"].ToString();
                        um.menuName = dr["menuname"].ToString();
                        um.menuURL = dr["meuurl"].ToString();
                        userMenusList.Add(um);
                    }

                }
            }

        }

        return userMenusList;
    }
}