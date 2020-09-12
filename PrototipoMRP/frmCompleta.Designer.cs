namespace PrototipoMRP
{
    partial class frmCompleta
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCompleta));
            this.pnl1 = new System.Windows.Forms.Panel();
            this.btnentradas = new System.Windows.Forms.Button();
            this.btnordenes = new System.Windows.Forms.Button();
            this.pnl2 = new System.Windows.Forms.Panel();
            this.pnl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnl1
            // 
            this.pnl1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.pnl1.Controls.Add(this.btnentradas);
            this.pnl1.Controls.Add(this.btnordenes);
            this.pnl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl1.Location = new System.Drawing.Point(0, 0);
            this.pnl1.Name = "pnl1";
            this.pnl1.Size = new System.Drawing.Size(1924, 85);
            this.pnl1.TabIndex = 0;
            this.pnl1.Paint += new System.Windows.Forms.PaintEventHandler(this.pnl1_Paint);
            // 
            // btnentradas
            // 
            this.btnentradas.BackColor = System.Drawing.Color.White;
            this.btnentradas.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnentradas.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnentradas.Location = new System.Drawing.Point(264, 0);
            this.btnentradas.Name = "btnentradas";
            this.btnentradas.Size = new System.Drawing.Size(264, 85);
            this.btnentradas.TabIndex = 1;
            this.btnentradas.Text = "Entradas";
            this.btnentradas.UseVisualStyleBackColor = false;
            this.btnentradas.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnordenes
            // 
            this.btnordenes.BackColor = System.Drawing.Color.White;
            this.btnordenes.Dock = System.Windows.Forms.DockStyle.Left;
            this.btnordenes.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnordenes.Location = new System.Drawing.Point(0, 0);
            this.btnordenes.Name = "btnordenes";
            this.btnordenes.Size = new System.Drawing.Size(264, 85);
            this.btnordenes.TabIndex = 0;
            this.btnordenes.Text = "Ordenes";
            this.btnordenes.UseVisualStyleBackColor = false;
            this.btnordenes.Click += new System.EventHandler(this.button1_Click);
            // 
            // pnl2
            // 
            this.pnl2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pnl2.BackgroundImage")));
            this.pnl2.Location = new System.Drawing.Point(158, 91);
            this.pnl2.Name = "pnl2";
            this.pnl2.Size = new System.Drawing.Size(1172, 774);
            this.pnl2.TabIndex = 1;
            // 
            // frmCompleta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1924, 1055);
            this.Controls.Add(this.pnl2);
            this.Controls.Add(this.pnl1);
            this.Name = "frmCompleta";
            this.Text = "frmCompleta";
            this.pnl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnl1;
        private System.Windows.Forms.Button btnordenes;
        private System.Windows.Forms.Button btnentradas;
        private System.Windows.Forms.Panel pnl2;
    }
}