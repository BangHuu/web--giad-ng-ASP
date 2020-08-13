using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
    private string userName;
    private string password;
    public Users()
    {
        //
        // TODO: Add constructor logic here
        //
        

   
    }
public string UserName
{
    get
    {
        return userName;
    }

    set
    {
        userName = value;
    }
}

public string Password
{
    get
    {
        return password;
    }

    set
    {
        password = value;
    }
}
}