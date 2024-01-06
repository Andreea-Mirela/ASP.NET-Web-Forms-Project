using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect
{
    public partial class AdaugaBrokerForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Session["s1"] = tbnume.Text;
            Session["s2"] = tbprenume.Text;
            Session["s3"] = tbani.Text;
            Session["s4"] = tbcomision.Text;
            Session["s5"] = tbtelefon.Text;
            Session["s6"] = tbmail.Text;
            Response.Redirect("VizualizareBrokeriForm.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["renunta"] = "1";
            Response.Redirect("VizualizareBrokeriForm.aspx");
        }
    }
}