using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect
{
    public partial class VizualizareBrokeriForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Columns[7].Visible = false;
            GridView1.Columns[8].Visible = false;
            if (Session["renunta"] != null)
            {
                //RadioButtonList1.SelectedIndex = 1;
                //DropDownList1.Visible = false;
                //btnProc.Visible = false;
                //Label11.Visible = false;
                //Label12.Visible = false;
                //Label13.Visible = false;
            }
            if (Session["procedura"] != null)
            {
                RadioButtonList1.SelectedIndex = 0;
            }
            if (Session["zed"] != null)
            {
                RadioButtonList1.SelectedIndex = 0;
            }

            if (RadioButtonList1.SelectedIndex == 0)
            {
                GridView1.Columns[7].Visible = false;
                GridView1.Columns[8].Visible = false;
                Button3.Visible = false;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                DropDownList1.Visible = true;
                btnProc.Visible = true;
            }
            else
             if (RadioButtonList1.SelectedIndex == 1)
            {
                GridView1.Columns[7].Visible = true;
                GridView1.Columns[8].Visible = true;
                Button3.Visible = true;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;
            }
            if (Session["s1"] != null)
            {
                RadioButtonList1.SelectedIndex = 1;
                Label1.Text = Session["s1"].ToString();
                Button2.Visible = true;
                Button4.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;
            }
            if (Session["s2"] != null)
            {
                Label2.Text = Session["s2"].ToString();
            }
            if (Session["s3"] != null)
            {
                Label3.Text = Session["s3"].ToString();
            }
            if (Session["s4"] != null)
            {
                Label4.Text = Session["s4"].ToString();
            }
            if (Session["s5"] != null)
            {
                Label5.Text = Session["s5"].ToString();
            }
            if (Session["s6"] != null)
            {
                Label6.Text = Session["s6"].ToString();
            }
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlParameter p1 = new SqlParameter("@Nume", System.Data.SqlDbType.NVarChar);
        p1.Value = Label1.Text;
            SqlParameter p2 = new SqlParameter("@Prenume", System.Data.SqlDbType.NVarChar);
        p2.Value = Label2.Text;
            SqlParameter p3 = new SqlParameter("@AniExperienta", System.Data.SqlDbType.Float);
        p3.Value = double.Parse(Label3.Text);
        SqlParameter p4 = new SqlParameter("@Comision", System.Data.SqlDbType.Float);
        p4.Value = double.Parse(Label4.Text);
        SqlParameter p5 = new SqlParameter("@NumarTelefon", System.Data.SqlDbType.NVarChar);
        p5.Value = Label5.Text;
            SqlParameter p6 = new SqlParameter("@AdresaMail", System.Data.SqlDbType.NVarChar);
        p6.Value = Label6.Text;

            string sInsert = "INSERT INTO [Brokeri] ([Nume], [Prenume], [AniExperienta], [Comision], [NumarTelefon], [AdresaMail]) VALUES (@Nume, @Prenume, @AniExperienta, @Comision, @NumarTelefon, @AdresaMail)";
        SqlConnection conInsert = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
        SqlCommand myCommand = new SqlCommand(sInsert, conInsert);
        myCommand.Parameters.Add(p1);
            myCommand.Parameters.Add(p2);
            myCommand.Parameters.Add(p3);
            myCommand.Parameters.Add(p4);
            myCommand.Parameters.Add(p5);
            myCommand.Parameters.Add(p6);
            Console.Write("Functioneaza");

            try
            {
                conInsert.Open();
                int d = myCommand.ExecuteNonQuery();
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Label5.Text = "";
                Label6.Text = "";
                Label7.Visible = false;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
            }
            finally
{
    conInsert.Close();
}
            DropDownList1.Visible = false;
            btnProc.Visible = false;
            Button2.Visible = false;
            Button4.Visible = false;
            Session["s1"] = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
                Server.Transfer("AdaugaBrokerForm.aspx");  
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["s1"] = null;
            Button2.Visible = false;
            Button4.Visible = false;
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            Label7.Text = "";
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                GridView1.Columns[7].Visible = false;
                GridView1.Columns[8].Visible = false;
                Button3.Visible = false;
                DropDownList1.Visible = true;
                btnProc.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
            }
            else
             if (RadioButtonList1.SelectedIndex == 1)
            {
                GridView1.Columns[7].Visible = true;
                GridView1.Columns[8].Visible = true;
                Button3.Visible = true;
                DropDownList1.Visible = false;
                btnProc.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dataView1 = (DataView)SqlDataSourceBrokeri.Select(args);
            DataTable dataTabl1 = dataView1.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dataTabl1);
            Cache["InvestCache"] = ds;
            Response.Redirect("WebFormZed.aspx?tip=" + this.DropDownList1.SelectedItem.Text);
        }

        protected void btnProc_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProceduraForm.aspx");
        }
    }
    
}