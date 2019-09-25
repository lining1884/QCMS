using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// UserMenu 的摘要说明
/// </summary>
public class UserMenu
{
    public UserMenu()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    private string Userid;
    private string Menuid;
    private string MenuName;
    private string MenuURL;
    public string userid
    {
        get { return Userid; }
        set { Userid = value; }
    }

    public string menuid
    {
        get { return Menuid; }
        set { Menuid = value; }
    }

    public string menuName
    {
        get { return MenuName; }
        set { MenuName = value; }
    }

    public string menuURL
    {
        get { return MenuURL; }
        set { MenuURL = value; }
    }

}