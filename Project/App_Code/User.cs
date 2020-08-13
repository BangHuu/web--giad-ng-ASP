using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    private string userName;
    private string fullName;
    private string password;
    private string numberPhone;
    private string address;
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

    public string FullName
    {
        get
        {
            return fullName;
        }

        set
        {
            fullName = value;
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

    public string NumberPhone
    {
        get
        {
            return numberPhone;
        }

        set
        {
            numberPhone = value;
        }
    }

    public string Address
    {
        get
        {
            return address;
        }

        set
        {
            address = value;
        }
    }

    public User()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public User(string userName,string fullName,string password,string numberphone)
    {
        //
        // TODO: Add constructor logic here
        //
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.numberPhone = numberPhone;
    }
}