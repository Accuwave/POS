namespace POS
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.panel1 = new System.Windows.Forms.Panel();
            this.ShowDevTools = new System.Windows.Forms.Button();
            this.Exit = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.BACK = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(27, 60);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1270, 747);
            this.panel1.TabIndex = 0;
            // 
            // ShowDevTools
            // 
            this.ShowDevTools.Location = new System.Drawing.Point(27, 22);
            this.ShowDevTools.Name = "ShowDevTools";
            this.ShowDevTools.Size = new System.Drawing.Size(91, 23);
            this.ShowDevTools.TabIndex = 0;
            this.ShowDevTools.Text = "ShowDevTools";
            this.ShowDevTools.UseVisualStyleBackColor = true;
            this.ShowDevTools.Click += new System.EventHandler(this.ShowDevTools_Click);
            // 
            // Exit
            // 
            this.Exit.Location = new System.Drawing.Point(777, 22);
            this.Exit.Name = "Exit";
            this.Exit.Size = new System.Drawing.Size(91, 23);
            this.Exit.TabIndex = 1;
            this.Exit.Text = "Exit";
            this.Exit.UseVisualStyleBackColor = true;
            this.Exit.Click += new System.EventHandler(this.Exit_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(125, 22);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(646, 20);
            this.textBox1.TabIndex = 2;
            // 
            // BACK
            // 
            this.BACK.Location = new System.Drawing.Point(874, 22);
            this.BACK.Name = "BACK";
            this.BACK.Size = new System.Drawing.Size(91, 23);
            this.BACK.TabIndex = 3;
            this.BACK.Text = "BACK";
            this.BACK.UseVisualStyleBackColor = true;
            this.BACK.Click += new System.EventHandler(this.BACK_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1329, 814);
            this.Controls.Add(this.BACK);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.Exit);
            this.Controls.Add(this.ShowDevTools);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button ShowDevTools;
        private System.Windows.Forms.Button Exit;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button BACK;
    }
}

