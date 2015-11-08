using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace AS3_TechSupport {
    public static class MessageBox {
        public static void Show(this Page page, string message) {
            page.ClientScript.RegisterStartupScript(page.GetType(), "MessageBox", "<script language='javascript'>alert('" + message + "');</script>");
        }
    }
}