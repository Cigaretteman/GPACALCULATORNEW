using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GPACALCULATORNEW
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        List<TableRow> RowList = new List<TableRow>();
        List<string> First
        {
            get { return Session["First"] as List<string>; }
            set { Session["First"] = value; }
        }
        List<string> Second
        {
            get { return Session["Second"] as List<string>; }
            set { Session["Second"] = value; }
        }
        List<string> Third
        {
            get { return Session["Third"] as List<string>; }
            set { Session["Third"] = value; }
        }
        List<string> Fourth
        {
            get { return Session["Fourth"] as List<string>; }
            set { Session["Fourth"] = value; }
        }

        int Count
        {
            get { return (int)Session["Count"]; }
            set { Session["Count"] = value; }
        }
        protected void Page_Init(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Count = 5;
                int counter = 0;
                foreach (TableRow Row in mainTable.Rows)
                {
                    if (counter > Count)
                    {
                        break;
                    }
                    else if (!Row.Visible)
                    {
                        Row.Visible = true;
                        counter++;
                    }
                }
            }
            else
            {
                //MakeTables();
            }
        }

        private void MakeTables()
        {
            for (int i = 0; i < Count; i++)
            {
                Button Btn = new Button();
                Btn.Click += Btn_Click;
                Btn.Text = "X";

                mainTable.Rows.Add(new TableRow()
                {
                    Cells =
                            {
                                new TableCell()
                                {
                                    Controls = {
                                        new TextBox()
                                        {
                                            Text = First[i]
                                        }
                                    }
                                },
                                new TableCell()
                                {
                                    Controls = {
                                        new TextBox()
                                        {
                                            Text = Second[i]
                                        }
                                    }
                                },
                                new TableCell()
                                {
                                    Controls = {
                                        new TextBox()
                                        {
                                            Text = Third[i]
                                        }
                                    }
                                },
                                new TableCell()
                                {
                                    Controls = {
                                        new TextBox()
                                        {
                                            Text = Fourth[i]
                                        }
                                    }
                                },
                                new TableCell()
                                {
                                    Controls = {
                                        Btn
                                    }
                                },
                            }
                });
            }

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            foreach (TableRow Row in mainTable.Rows)
            {
                if (!Row.Visible)
                {
                    for (int i = 0; i < 4; i++)
                    {
                        if (Row.Cells[i].Controls[0] as TextBox != null)
                            ((TextBox)Row.Cells[i].Controls[0]).Text = string.Empty;
                    }
                    Row.Visible = true;
                    Count++;
                    return;
                }
            }
        }
        protected void Calculate(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

            }
            else
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            btn.Parent.Parent.Visible = false;
            Count--;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Query = "INSERT INTO Classes (Course, Classes) VALUES ('";
            Dictionary<string, string> Data = new Dictionary<string, string>();
            List<string> Classes = new List<string>();
            for (int k = 0; k < mainTable.Rows.Count; k++)
            {
                for (int i = 0; i < mainTable.Rows[k].Cells.Count; i++)
                {
                    foreach (TextBox a in mainTable.Rows[k].Cells[i].Controls.OfType<TextBox>())
                    {
                        switch (i)
                        {
                            case 0:
                                Data.Add("@course" + k, a.Text);
                                Classes.Add("@course" + k);
                                break;
                            case 1:
                                Data.Add("@hours" + k, a.Text);
                                Classes.Add("@hours" + k);
                                break;
                        }
                    }
                }
            }
            string joinMerge = string.Join(" \n ", Classes);
            Query += joinMerge + "')";

            using (SqlConnection Client = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                Client.Open();
                using (SqlCommand Cmd = new SqlCommand(Query, Client))
                {
                    foreach (KeyValuePair<string, string> value in Data)
                    {
                        Cmd.Parameters.AddWithValue(value.Key, value.Value);
                    }
                    Cmd.ExecuteNonQuery();
                }
            }
        }
    }
}