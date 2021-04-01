
namespace PhanQuyen
{
    partial class Login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.UserName_TextField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.PassWord_TextField = new MaterialSkin.Controls.MaterialSingleLineTextField();
            this.materialRaisedButton1 = new MaterialSkin.Controls.MaterialRaisedButton();
            this.materialDivider1 = new MaterialSkin.Controls.MaterialDivider();
            this.materialLabel1 = new MaterialSkin.Controls.MaterialLabel();
            this.materialCheckBox1 = new MaterialSkin.Controls.MaterialCheckBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // UserName_TextField
            // 
            this.UserName_TextField.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.UserName_TextField.Depth = 0;
            this.UserName_TextField.Hint = "User Name";
            this.UserName_TextField.Location = new System.Drawing.Point(365, 102);
            this.UserName_TextField.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.UserName_TextField.MouseState = MaterialSkin.MouseState.HOVER;
            this.UserName_TextField.Name = "UserName_TextField";
            this.UserName_TextField.PasswordChar = '\0';
            this.UserName_TextField.SelectedText = "";
            this.UserName_TextField.SelectionLength = 0;
            this.UserName_TextField.SelectionStart = 0;
            this.UserName_TextField.Size = new System.Drawing.Size(252, 28);
            this.UserName_TextField.TabIndex = 2;
            this.UserName_TextField.UseSystemPasswordChar = false;
            this.UserName_TextField.Click += new System.EventHandler(this.materialSingleLineTextField1_Click);
            // 
            // PassWord_TextField
            // 
            this.PassWord_TextField.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.PassWord_TextField.Depth = 0;
            this.PassWord_TextField.Hint = "Password";
            this.PassWord_TextField.Location = new System.Drawing.Point(365, 155);
            this.PassWord_TextField.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.PassWord_TextField.MouseState = MaterialSkin.MouseState.HOVER;
            this.PassWord_TextField.Name = "PassWord_TextField";
            this.PassWord_TextField.PasswordChar = '\0';
            this.PassWord_TextField.SelectedText = "";
            this.PassWord_TextField.SelectionLength = 0;
            this.PassWord_TextField.SelectionStart = 0;
            this.PassWord_TextField.Size = new System.Drawing.Size(252, 28);
            this.PassWord_TextField.TabIndex = 3;
            this.PassWord_TextField.UseSystemPasswordChar = false;
            this.PassWord_TextField.Click += new System.EventHandler(this.materialSingleLineTextField2_Click);
            // 
            // materialRaisedButton1
            // 
            this.materialRaisedButton1.Depth = 0;
            this.materialRaisedButton1.Location = new System.Drawing.Point(518, 254);
            this.materialRaisedButton1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.materialRaisedButton1.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialRaisedButton1.Name = "materialRaisedButton1";
            this.materialRaisedButton1.Primary = true;
            this.materialRaisedButton1.Size = new System.Drawing.Size(90, 29);
            this.materialRaisedButton1.TabIndex = 4;
            this.materialRaisedButton1.Text = "Login";
            this.materialRaisedButton1.UseVisualStyleBackColor = true;
            // 
            // materialDivider1
            // 
            this.materialDivider1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.materialDivider1.Depth = 0;
            this.materialDivider1.Location = new System.Drawing.Point(365, 301);
            this.materialDivider1.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialDivider1.Name = "materialDivider1";
            this.materialDivider1.Size = new System.Drawing.Size(250, 5);
            this.materialDivider1.TabIndex = 5;
            this.materialDivider1.Text = "materialDivider1";
            this.materialDivider1.Click += new System.EventHandler(this.materialDivider1_Click);
            // 
            // materialLabel1
            // 
            this.materialLabel1.AutoSize = true;
            this.materialLabel1.Depth = 0;
            this.materialLabel1.Font = new System.Drawing.Font("Roboto", 11F);
            this.materialLabel1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.materialLabel1.Location = new System.Drawing.Point(528, 329);
            this.materialLabel1.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialLabel1.Name = "materialLabel1";
            this.materialLabel1.Size = new System.Drawing.Size(80, 24);
            this.materialLabel1.TabIndex = 6;
            this.materialLabel1.Text = "Register";
            this.materialLabel1.Click += new System.EventHandler(this.materialLabel1_Click);
            // 
            // materialCheckBox1
            // 
            this.materialCheckBox1.AutoSize = true;
            this.materialCheckBox1.Depth = 0;
            this.materialCheckBox1.Font = new System.Drawing.Font("Roboto", 10F);
            this.materialCheckBox1.Location = new System.Drawing.Point(366, 209);
            this.materialCheckBox1.Margin = new System.Windows.Forms.Padding(0);
            this.materialCheckBox1.MouseLocation = new System.Drawing.Point(-1, -1);
            this.materialCheckBox1.MouseState = MaterialSkin.MouseState.HOVER;
            this.materialCheckBox1.Name = "materialCheckBox1";
            this.materialCheckBox1.Ripple = true;
            this.materialCheckBox1.Size = new System.Drawing.Size(134, 30);
            this.materialCheckBox1.TabIndex = 7;
            this.materialCheckBox1.Text = "Show / Hiden";
            this.materialCheckBox1.UseVisualStyleBackColor = true;
            this.materialCheckBox1.CheckedChanged += new System.EventHandler(this.materialCheckBox1_CheckedChanged);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(3, 73);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(339, 297);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(654, 379);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.materialCheckBox1);
            this.Controls.Add(this.materialLabel1);
            this.Controls.Add(this.materialDivider1);
            this.Controls.Add(this.materialRaisedButton1);
            this.Controls.Add(this.PassWord_TextField);
            this.Controls.Add(this.UserName_TextField);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.ImeMode = System.Windows.Forms.ImeMode.On;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Login";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MaterialSkin.Controls.MaterialSingleLineTextField UserName_TextField;
        private MaterialSkin.Controls.MaterialSingleLineTextField PassWord_TextField;
        private MaterialSkin.Controls.MaterialRaisedButton materialRaisedButton1;
        private MaterialSkin.Controls.MaterialDivider materialDivider1;
        private MaterialSkin.Controls.MaterialLabel materialLabel1;
        private MaterialSkin.Controls.MaterialCheckBox materialCheckBox1;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

