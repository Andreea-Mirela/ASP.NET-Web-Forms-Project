using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect
{
    public partial class ProceduraForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPaginaPrincipala_Click(object sender, EventArgs e)
        {
            Session["procedura"] = "true";
            Response.Redirect("VizualizareBrokeriForm.aspx");
        }


        protected void btnApel_Click(object sender, EventArgs e)
        {
            tbMes.Text += "\n";
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            string apelProc = "BrokeriIntervalExperienta";

            SqlCommand myCommand = new SqlCommand(apelProc, myConnection);
            myCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("@minExperienta", System.Data.SqlDbType.Float);
            p1.Value = double.Parse(tbMinAni.Text);
            SqlParameter p2 = new SqlParameter("@maxExperienta", System.Data.SqlDbType.Float);
            p2.Value = double.Parse(tbMaxAni.Text);
            SqlParameter p3 = new SqlParameter("@nrBrokeri", System.Data.SqlDbType.Int);
            p3.Direction = System.Data.ParameterDirection.Output;

            myCommand.Parameters.Add(p1);
            myCommand.Parameters.Add(p2);
            myCommand.Parameters.Add(p3);
            SqlDataReader dr = null;
            try
            {
                myConnection.Open();
                dr = myCommand.ExecuteReader();
                while(dr.Read())
                {
                    tbMes.Text += "\r\n" + "Id: " + dr[0] + "\t" + dr[1] + "\t" + dr[2] + "\t" + "Ani experienta: " + dr[3] + "\t" + "Comision: " + dr[4] + "\t" + dr[5] + "\t" + dr[6] + "\n"; 
                }
            }
            catch(Exception ex)
            {
                tbMes.Text += "\r\n" + ex.Message;
            }
            finally
            {
                dr.Close();
                myConnection.Close();
            }
            tbNrBrokeri.Text = p3.Value.ToString();
            
        }

        protected void btnCreare_Click(object sender, EventArgs e)
        {
            string dropProc = "drop procedure BrokeriIntervalExperienta";
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            SqlCommand myCommand = new SqlCommand(dropProc, myConnection);
            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                tbMes.Text += "\r\nStergere OK";
            }
            catch(Exception ex)
            {
                tbMes.Text += "\r\nStergere esuata" + ex.Message;
            }
            string creareProc = " CREATE PROCEDURE [dbo].[BrokeriIntervalExperienta] " +
                                "(@minExperienta float, @maxExperienta float,@nrBrokeri int output)" + 
                                "AS " +
                                "SELECT * FROM Brokeri WHERE AniExperienta >= @minExperienta and AniExperienta <= @maxExperienta; " +
                                "SELECT @nrBrokeri = COUNT(*) FROM Brokeri WHERE AniExperienta >= @minExperienta and AniExperienta <= @maxExperienta; " +
                                "RETURN 0";
            myCommand = new SqlCommand(creareProc, myConnection);
            try
            {
                myCommand.ExecuteNonQuery();
                tbMes.Text += "\r\nCreare OK";
            }
            catch (Exception ex)
            {
                tbMes.Text += "\r\nCreare esuata" + ex.Message;
            }
            finally
            {
                myConnection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dropProc = "drop procedure PortofoliiBroker";
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            SqlCommand myCommand = new SqlCommand(dropProc, myConnection);
            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                tbMes2.Text += "\r\nStergere OK";
            }
            catch (Exception ex)
            {
                tbMes2.Text += "\r\nStergere esuata" + ex.Message;
            }
            string creareProc = "CREATE PROCEDURE [dbo].[PortofoliiBroker] @idBroker int AS SELECT * FROM Portofolii WHERE IdBroker = @idBroker; RETURN 0";
            myCommand = new SqlCommand(creareProc, myConnection);
            try
            {
                myCommand.ExecuteNonQuery();
                tbMes2.Text += "\r\nCreare OK";
            }
            catch (Exception ex)
            {
                tbMes2.Text += "\r\nCreare esuata" + ex.Message;
            }
            finally
            {
                myConnection.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            tbMes2.Text += "\n";
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            string apelProc = "PortofoliiBroker";

            SqlCommand myCommand = new SqlCommand(apelProc, myConnection);
            myCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("@idBroker", System.Data.SqlDbType.Int);
            p1.Value = int.Parse(TextBox1.Text);

            myCommand.Parameters.Add(p1);
            SqlDataReader dr = null;
            try
            {
                myConnection.Open();
                dr = myCommand.ExecuteReader();
                while (dr.Read())
                {
                    tbMes2.Text += "\r\n"+ "Id: " + dr[0] + "\t" + dr[1] + "\t"+ "Risc: " + dr[2] + "\t" + dr[3] + "\t" + dr[4] + "\t" + "Broker: " + dr[5] + "\n";
                }
            }
            catch (Exception ex)
            {
                tbMes2.Text += "\r\n" + ex.Message;
            }
            finally
            {
                dr.Close();
                myConnection.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string dropProc = "drop procedure InvestitiiProcedura";
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            SqlCommand myCommand = new SqlCommand(dropProc, myConnection);
            try
            {
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                tbMes3.Text += "\r\nStergere OK";
            }
            catch (Exception ex)
            {
                tbMes3.Text += "\r\nStergere esuata" + ex.Message;
            }
            string creareProc = "CREATE PROCEDURE [dbo].[InvestitiiProcedura] @idPortofoliu int AS SELECT * FROM Investitii WHERE IdPortofoliu = @idPortofoliu; RETURN 0";
            myCommand = new SqlCommand(creareProc, myConnection);
            try
            {
                myCommand.ExecuteNonQuery();
                tbMes3.Text += "\r\nCreare OK";
            }
            catch (Exception ex)
            {
                tbMes3.Text += "\r\nCreare esuata" + ex.Message;
            }
            finally
            {
                myConnection.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            SqlConnection myConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=InvestDB;Integrated Security=True;Pooling=False");
            string apelProc = "InvestitiiProcedura";

            SqlCommand myCommand = new SqlCommand(apelProc, myConnection);
            myCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("@idPortofoliu", System.Data.SqlDbType.Int);
            p1.Value = int.Parse(TextBox2.Text);

            myCommand.Parameters.Add(p1);
            SqlDataReader dr = null;
            try
            {
                myConnection.Open();
                dr = myCommand.ExecuteReader();
                while (dr.Read())
                {
                    tbMes3.Text += "\r\n" + "Id: " + dr[0] + "\t" + dr[1] + "\t" + "Randament: "+ dr[2] + "\t" + "Portofoliu: " + dr[3] + "\n";
                }
            }
            catch (Exception ex)
            {
                tbMes3.Text += "\r\n" + ex.Message;
            }
            finally
            {
                dr.Close();
                myConnection.Close();
            }
        }
    }
}