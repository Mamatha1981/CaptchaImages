using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace CaptchaImage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void m_btValidate_Click(object sender, EventArgs e)
        {
            if (m_tbCaptcha.Text == Session["captchaText"].ToString()) {
                m_lbMessage.ForeColor = Color.Green;
                m_lbMessage.Text = "Valid";
            } else {
                m_lbMessage.ForeColor = Color.Red;
                m_lbMessage.Text = "Invalid";
            }
        }
    }
}