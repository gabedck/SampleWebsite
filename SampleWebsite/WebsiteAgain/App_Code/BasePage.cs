using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteAgain.App_Code
{
    public class BasePage : System.Web.UI.Page
    {
        public BasePage()
        {
            PreInit += Page_PreInit;
        }

        private void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie preferedTheme = Request.Cookies.Get("preferedTheme");

            if (preferedTheme != null)
            {
                string folder = Server.MapPath("/App_Themes/" + preferedTheme.Value);

                if (System.IO.Directory.Exists(folder))
                {
                    Page.Theme = preferedTheme.Value;
                }
            }
        }
    }
}