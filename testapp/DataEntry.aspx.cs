using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testapp
{
    public partial class _Default : Page
    {
        private void Clear_Form()
        {
            txID.Text = "";
            txFName.Text = "";
            txLName.Text = "";
            txEmail.Text = "";
            rdGender.ClearSelection();
            ddQu.SelectedValue = "0";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear_Form();
        }

        private void Reload()
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        private void Page_Error(int reason)
        {
            string message = "Error in form submission: ";
            if (reason == 0)
            {
                message += "One or more fields not filled or incorrectly filled.";
            }
            else if (reason == 1)
            {
                message += "Employee ID already present in database.";
            }
            message += " Please try again.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('" + message + "');", true);
        }
    

        protected void submit_Click(object sender, EventArgs e)
        {
            string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg"};
            string ext = System.IO.Path.GetExtension(imageFile.PostedFile.FileName);
            bool isValidFile = false;
            if (imageFile.HasFile)
            {
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (ext == "." + validFileTypes[i])
                    {
                        isValidFile = true;
                        break;
                    }
                }  
            }
            if (string.IsNullOrWhiteSpace(txID.Text) ||
                string.IsNullOrWhiteSpace(txFName.Text) ||
                string.IsNullOrWhiteSpace(txLName.Text) ||
                string.IsNullOrWhiteSpace(txEmail.Text) ||
                string.IsNullOrWhiteSpace(rdGender.SelectedValue) ||
                ddQu.SelectedValue == "a" ||
                !isValidFile)
            {
                Page_Error(0);
                return;
            }
            string filename = Path.GetFileName(imageFile.PostedFile.FileName);
            string filetype = imageFile.PostedFile.ContentType;
            Stream s = imageFile.PostedFile.InputStream;
            BinaryReader b = new BinaryReader(s);
            byte[] image = b.ReadBytes((Int32)s.Length);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("empid", txID.Text);
            cmd.Parameters.AddWithValue("fname", txFName.Text);
            cmd.Parameters.AddWithValue("lname", txLName.Text);
            cmd.Parameters.AddWithValue("email", txEmail.Text);
            cmd.Parameters.AddWithValue("gender", rdGender.SelectedValue);
            cmd.Parameters.AddWithValue("qualification", ddQu.SelectedItem.Text);
            cmd.Parameters.AddWithValue("filename", filename);
            cmd.Parameters.AddWithValue("filetype", filetype);
            cmd.Parameters.AddWithValue("image", image);
            con.Open();
            try
            {
                int k = cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                Page_Error(1);
                return;
            }
            con.Close();
            Page.Response.Redirect("~/success.aspx", true);

        }

        protected void Reload_Page(object sender, EventArgs e)
        {
            Reload();
        }
    }
}