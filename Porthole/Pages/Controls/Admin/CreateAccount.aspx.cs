﻿using Porthole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Porthole.Pages.Controls.Admin
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        public List<Models.Mentor> mentorList { get; set; }
        public List<Models.Student> studentList { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rblAccountType.SelectedIndex = 0;
                rblAccountType.Items.Add("Mentor");
                rblAccountType.Items.Add("Student");
                using (var context = new DatabaseContext())
                {
                    mentorList = context.Mentor.ToList();
                    studentList = context.Student.ToList();
                    foreach (Models.Mentor m in mentorList)
                    {
                        ddlMentor.Items.Add(m.Name);
                    }
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string type = rblAccountType.SelectedValue;
            using (var context = new DatabaseContext())
            {
                if (Page.IsValid)
                {
                    if (type == "Mentor")
                    {
                        Models.Mentor mentor = new Models.Mentor()
                        {
                            Name = txtName.Text,
                            EmailAddress = txtEmail.Text,
                            Password = txtPassword.Text
                        };
                        context.Add(mentor);
                    }

                    if (type == "Student")
                    {
                        Models.Student student = new Models.Student();
                        student.Name = txtName.Text;
                        student.EmailAddress = txtEmail.Text;
                        student.Password = txtPassword.Text;
                        student.Course = txtCourse.Text;
                        student.Status = "N";

                        student.Mentor = context.Mentor.Single(m => m.Name.Equals(ddlMentor.SelectedValue));
                        context.Add(student);
                    };
                    Response.Redirect("/Pages/Settings.aspx");
                }
            }

        }

        protected void rblAccountType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblAccountType.SelectedValue == "Mentor")
            {
                ddlMentor.Visible = false;
                lblMentor.Visible = false;
            }
            else
            {
                ddlMentor.Visible = true;
                lblMentor.Visible = true;
            }
        }

        protected void cvEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            using (var context = new DatabaseContext())
            {
                mentorList = context.Mentor.ToList();
                studentList = context.Student.ToList();
            }
            if (rblAccountType.SelectedValue == "Mentor")
            {
                foreach (var m in mentorList)
                {
                    if (txtEmail.Text == m.EmailAddress)
                    {
                        args.IsValid = false;
                    }
                }
            }
            else
            {
                foreach (var s in studentList)
                {
                    if (txtEmail.Text == s.EmailAddress)
                    {
                        args.IsValid = false;
                    }
                }
            }
        }
    }
}