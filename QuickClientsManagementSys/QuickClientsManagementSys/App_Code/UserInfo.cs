using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// UserInfo 的摘要说明
/// </summary>
public class UserInfo
{
    public UserInfo()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    private string Rowid;
    public string rowid
    {
        get { return Rowid; }
        set { Rowid = value; }
    }

    private string Indexid;
    public string indexid
    {
        get { return Indexid; }
        set { Indexid = value; }
    }

    private string Userid;
    public string userid
    {
        get { return Userid; }
        set { Userid = value; }
    }

    private string UserName;
    public string userName
    {
        get { return UserName; }
        set { UserName = value; }
    }

    private string UserLevel;
    public string userLevel
    {
        get { return UserLevel; }
        set { UserLevel = value; }
    }

    private string UserStatus;
    public string userStatus
    {
        get { return UserStatus; }
        set { UserStatus = value; }
    }
}