private void button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter sd = new SqlDataAdapter("SELECT COUNT(*) FROM login WHERE User_Name='" + textBox1.Text + "'and Passward='" + textBox2.Text + "'",conn);
            DataTable dt = new DataTable();
           sd.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                front fr = new front();
                fr.Show();
                this.Hide();
                passingtext = textBox1.Text;
            }
            else {
                MessageBox.Show("User name and Passward does not matched");
               textBox1.Text = "";
                textBox2.Text = "";
          }
            }
