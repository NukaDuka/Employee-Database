using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testapp
{
    public partial class Table : Page
    {
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Employee", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    emptable.DataSource = dt;
                    emptable.DataBind();
                    if (dt.Rows.Count == 0)
                    {
                        lblHidden.Visible = true;
                    }
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                lblHidden.Visible = false;
                this.BindGrid();
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:" + dr["EMP_FILETYPE"] + ";base64," + Convert.ToBase64String((byte[])dr["EMP_IMAGE"]);
                (e.Row.FindControl("imgemp") as Image).ImageUrl = imageUrl;
            }
        }

        protected void emptable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            emptable.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

    }
}