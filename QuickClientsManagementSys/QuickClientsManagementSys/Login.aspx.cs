using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    OracleDB orcl = new OracleDB();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string strUserName = this.tbxUser.Text;
            string strPassword = this.tbxPassWord.Text;
            string strReallyPwd = string.Empty;
            string UserId = string.Empty;

            //连接数据库
            string sqlText = @"select * from TABUSER t where username='"+ strUserName+"'";
            DataSet ds = orcl.ReturnDataSet(sqlText, "UserToLogin");
            if (ds != null)
            {
                if(ds.Tables.Count!=0)
                {
                    if(ds.Tables[0].Rows.Count!=0)
                    {
                        strReallyPwd = ds.Tables[0].Rows[0]["password"].ToString();
                        UserId= ds.Tables[0].Rows[0]["userid"].ToString();
                    }
                }
            }

            if(strReallyPwd.Equals(string.Empty))
            {
                //用户名输入不正确
                Response.Write("<scripttype='text / javascript'>alert('用户名输入不正确,请重新输入！');</script>");
            }
            else
            {
                if(strReallyPwd.Equals(strPassword))
                {
                    //用户密码输入正确，页面跳转到主页上
                    Response.Redirect("HomePage.aspx?userid=" + UserId);
                }
                else
                {
                    //返回用户密码输入不正确提示
                    Response.Write("<scripttype='text / javascript'>alert('用户密码输入不正确,请重新输入！');</script>");
                    this.tbxPassWord.Text = string.Empty;
                }
            }


            //    OracleParameter[] orclParms = new OracleParameter[]{
            //new OracleParameter(":usernamev",OracleType.VarChar,150)
            //};
            //    orclParms[0].Value = strUserName;
            //    DataTable dt = new DataTable();
            //    dt = OracleDB.ExecuteDataTable(System.Data.CommandType.Text, sqlText, orclParms);
        }
        catch(Exception ex)
        {
            Console.WriteLine(ex.Message.ToString());
        }
    }
}