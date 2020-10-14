namespace VISTAMRP
{
    partial class frmEmpleadoh
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
            this.lblHoratitulo = new System.Windows.Forms.Label();
            this.lblEmpleado = new System.Windows.Forms.Label();
            this.lblTiempo = new System.Windows.Forms.Label();
            this.lblOrden = new System.Windows.Forms.Label();
            this.txtTiempo = new System.Windows.Forms.TextBox();
            this.txtOrden = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.cmbEmpleado = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblHoratitulo
            // 
            this.lblHoratitulo.AutoSize = true;
            this.lblHoratitulo.BackColor = System.Drawing.Color.Transparent;
            this.lblHoratitulo.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHoratitulo.Location = new System.Drawing.Point(60, 155);
            this.lblHoratitulo.Name = "lblHoratitulo";
            this.lblHoratitulo.Size = new System.Drawing.Size(163, 22);
            this.lblHoratitulo.TabIndex = 0;
            this.lblHoratitulo.Text = "Horas Empleado";
            // 
            // lblEmpleado
            // 
            this.lblEmpleado.AutoSize = true;
            this.lblEmpleado.BackColor = System.Drawing.Color.Transparent;
            this.lblEmpleado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmpleado.Location = new System.Drawing.Point(60, 222);
            this.lblEmpleado.Name = "lblEmpleado";
            this.lblEmpleado.Size = new System.Drawing.Size(89, 20);
            this.lblEmpleado.TabIndex = 1;
            this.lblEmpleado.Text = "Empleado";
            // 
            // lblTiempo
            // 
            this.lblTiempo.AutoSize = true;
            this.lblTiempo.BackColor = System.Drawing.Color.Transparent;
            this.lblTiempo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTiempo.Location = new System.Drawing.Point(60, 305);
            this.lblTiempo.Name = "lblTiempo";
            this.lblTiempo.Size = new System.Drawing.Size(69, 20);
            this.lblTiempo.TabIndex = 2;
            this.lblTiempo.Text = "Tiempo";
            // 
            // lblOrden
            // 
            this.lblOrden.AutoSize = true;
            this.lblOrden.BackColor = System.Drawing.Color.Transparent;
            this.lblOrden.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrden.Location = new System.Drawing.Point(60, 400);
            this.lblOrden.Name = "lblOrden";
            this.lblOrden.Size = new System.Drawing.Size(154, 20);
            this.lblOrden.TabIndex = 3;
            this.lblOrden.Text = "Orden Producción";
            // 
            // txtTiempo
            // 
            this.txtTiempo.Location = new System.Drawing.Point(271, 305);
            this.txtTiempo.Name = "txtTiempo";
            this.txtTiempo.Size = new System.Drawing.Size(215, 22);
            this.txtTiempo.TabIndex = 5;
            this.txtTiempo.TextChanged += new System.EventHandler(this.eventTiempo);
            this.txtTiempo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventTiempo);
            // 
            // txtOrden
            // 
            this.txtOrden.Location = new System.Drawing.Point(271, 400);
            this.txtOrden.Name = "txtOrden";
            this.txtOrden.Size = new System.Drawing.Size(215, 22);
            this.txtOrden.TabIndex = 6;
            this.txtOrden.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventOrden);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(635, 181);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(587, 286);
            this.dataGridView1.TabIndex = 12;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Location = new System.Drawing.Point(94, 21);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1100, 112);
            this.panel1.TabIndex = 13;
            // 
            // cmbEmpleado
            // 
            this.cmbEmpleado.FormattingEnabled = true;
            this.cmbEmpleado.Location = new System.Drawing.Point(271, 223);
            this.cmbEmpleado.Name = "cmbEmpleado";
            this.cmbEmpleado.Size = new System.Drawing.Size(214, 24);
            this.cmbEmpleado.TabIndex = 14;
            this.cmbEmpleado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEmpleado);
            // 
            // frmEmpleadoh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1282, 503);
            this.Controls.Add(this.cmbEmpleado);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.txtOrden);
            this.Controls.Add(this.txtTiempo);
            this.Controls.Add(this.lblOrden);
            this.Controls.Add(this.lblTiempo);
            this.Controls.Add(this.lblEmpleado);
            this.Controls.Add(this.lblHoratitulo);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmEmpleadoh";
            this.Text = "frmEmpleadoh";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHoratitulo;
        private System.Windows.Forms.Label lblEmpleado;
        private System.Windows.Forms.Label lblTiempo;
        private System.Windows.Forms.Label lblOrden;
        private System.Windows.Forms.TextBox txtTiempo;
        private System.Windows.Forms.TextBox txtOrden;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox cmbEmpleado;
    }
}