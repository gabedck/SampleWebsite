using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteAgain.MasterPages
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie preferedTheme = Request.Cookies.Get("preferedTheme");

                if (preferedTheme == null) 
                {
                    LinkButton14px.Style["font-size"] = "22px";

                    LinkButton14px.Style["font-weight"] = "bold";
                }

                else if (preferedTheme.Value.CompareTo("12px") == 0)
                {
                    LinkButton12px.Style["font-size"] = "22px";

                    LinkButton12px.Style["font-weight"] = "bold";
                }

                else if (preferedTheme.Value.CompareTo("16px") == 0)
                {
                    LinkButton16px.Style["font-size"] = "22px";

                    LinkButton16px.Style["font-weight"] = "bold";
                }

                else if (preferedTheme.Value.CompareTo("18px") == 0)
                {
                    LinkButton18px.Style["font-size"] = "22px";

                    LinkButton18px.Style["font-weight"] = "bold";
                }

                else if (preferedTheme.Value.CompareTo("20px") == 0)
                {
                    LinkButton20px.Style["font-size"] = "22px";

                    LinkButton20px.Style["font-weight"] = "bold";
                }
            }
        }
        protected void LinkButton14px_Click(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = Request.Cookies.Get("preferedTheme");

            if (preferedTheme != null)
            {
                preferedTheme.Expires = DateTime.Now.AddDays(-1);

                Response.Cookies.Add(preferedTheme);

                Response.Redirect(Request.Url.ToString());
            }
        }
        protected void LinkButton12px_Click(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = new HttpCookie("preferedTheme");

            preferedTheme.Expires = DateTime.Now.AddMonths(3);

            preferedTheme.Value = "12px";

            Response.Cookies.Add(preferedTheme);

            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton16px_Click(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = new HttpCookie("preferedTheme");

            preferedTheme.Expires = DateTime.Now.AddMonths(3);

            preferedTheme.Value = "16px";

            Response.Cookies.Add(preferedTheme);

            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton18px_Click(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = new HttpCookie("preferedTheme");

            preferedTheme.Expires = DateTime.Now.AddMonths(3);

            preferedTheme.Value = "18px";

            Response.Cookies.Add(preferedTheme);

            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton20px_Click(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = new HttpCookie("preferedTheme");

            preferedTheme.Expires = DateTime.Now.AddMonths(3);

            preferedTheme.Value = "20px";

            Response.Cookies.Add(preferedTheme);

            Response.Redirect(Request.Url.ToString());
        }
    }
}